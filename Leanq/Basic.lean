import Batteries.Data.List


syntax:30 " from " term:30 " in " term:30 " where " term:30 " select " term:30 : term
macro_rules
| `(from $t:term in $l:term where $w:term select $s:term) =>
  `(List.map (fun $t => $s) (List.filter (fun $t => $w) $l))


def innerJoin {α β γ : Type} [DecidableEq γ] (x : List α) (y : List β) (f : α → γ) (g : β → γ) : List (α × β) :=
  (List.product x y).filter (fun ⟨a, b⟩ => f a == g b)

syntax:30 " from " term:30 " in " term:30 " join " term:30 " in " term:30 " on " term:30 " equals " term:30 " select " term:30 : term
macro_rules
| `(from $t₁:term in $l₁:term join $t₂:term in $l₂:term on $p₁:term equals $p₂:term select $s:term) =>
  `(List.map (fun ($t₁, $t₂) => $s) (innerJoin $l₁ $l₂ (fun $t₁ => $p₁) (fun $t₂ => $p₂)))
