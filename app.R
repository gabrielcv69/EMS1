# Jeu de devinette

# Choisir un nombre aléatoire entre 1 et 100
nombre_a_deviner <- sample(1:100, 1)

# Initialiser les tentatives
tentative <- 0

# Boucle pour continuer jusqu'à ce que le nombre soit deviné
repeat {
  # Demander au joueur de deviner
  devinette <- as.integer(readline(prompt = "Devine un nombre entre 1 et 100 : "))
  
  # Incrémenter le nombre de tentatives
  tentative <- tentative + 1
  
  # Vérifier si le joueur a deviné le bon nombre
  if (devinette == nombre_a_deviner) {
    cat("Félicitations ! Tu as deviné le nombre", nombre_a_deviner, "en", tentative, "tentatives !\n")
    break
  } else if (devinette < nombre_a_deviner) {
    cat("Le nombre est plus grand !\n")
  } else {
    cat("Le nombre est plus petit !\n")
  }
}
