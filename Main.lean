import Leanq

def main : IO Unit :=
  IO.println ("\n".intercalate
    (from user in users join book in items on user.id equals book.borrowedBy select
    "The " ++ user.position ++ " " ++ user.firstName ++ " " ++ user.lastName ++ " borrowed " ++ book.title ++ "."))
