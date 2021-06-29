# Quick Demo

Name <-
  c(
    "Victor Ordu",
    "Precious Eze",
    "Joshua Hicks",
    "Ifeoma Okoro",
    "Oma Kalu",
    "Ekaette Ikott",
    "Abdulrahim Sahid",
    "Saul Mancha",
    "Ayodeji Ijebu",
    "Pleasant Boyo"
  )

Name

Facility <- c(
  "Wuse",
  "Asokoro",
  "Karu",
  "Maitama",
  "Bwari",
  "Gwagwalada",
  "Kubwa",
  "Gwarimpa",
  "Garki",
  "Katampe"
)

Facility

typeof(Name)
is.character(Facility)
x <- c(1, 5, 9)
x
as.character(x)

# Integer vectors
Age <- c(18, 21, 25, 30, 100, 88, 50, 35, 45, 25)
Age
length(Age)
StaffStrength <- c(15, 17, 20, 21, 22, 25, 160, 265, 72, 2)
StaffStrength
length(StaffStrength)

# Logical vectors
PermitSighted  <- c(T, F, F, T, T, T, F, F, T, T)
usingPPE <- c(TRUE, FALSE, FALSE, TRUE, TRUE, TRUE, FALSE, TRUE, FALSE)
PermitSighted
usingPPE
str(PermitSighted)
