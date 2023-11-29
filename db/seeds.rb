# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Answer.destroy_all
Comment.destroy_all
UsersChapter.destroy_all
Chapter.destroy_all
UsersCourse.destroy_all
Course.destroy_all
User.destroy_all
puts "CLEANED DATABASE"


course1 = Course.create!(
   title: "S'entrainer à faire un double-clic",
   description: "Dans ce cours, suivez le rythme pour vous entrainer a reussir tout vos double-clics !",
   category: "Souris",
   difficulty: "Débutant"
 )
course1.save!

course2 = Course.create!(
  title: "Apprendre à faire un copier/coller au clavier",
  description: "Dans ce cours vous apprendrez à utiliser les combinaisons de touches pour faire des copier/coller",
  category: "Clavier",
  difficulty: "Intermédiaire"
)
course2.save!

course3 = Course.create!(
  title: "Réussir à reconnaitre le chemin d'un dossier ou fichier dans l'ordinateur",
  description: "Dans ce cours vous apprendrez à naviguer dans votre ordinateur grâce aux chemins, et ainsi retrouver facilement où vous êtes dans l'ordinateur de même que vos fichiers",
  category: "Navigation",
  difficulty: "Avancé"
)
course3.save!
puts "CREATED COURSES"

chapter1_1 = Chapter.create!(
  course: course1,
  title: "Suivez le rythme !",
  content: "*Cliquez dans la case en suivant le rythme donner par l'indicateur*"
)

chapter2_1 = Chapter.create!(
  course: course2,
  title: "Selectionner le texte",
  content: "*Explications sur comment selectionner le texte à la souris*"
)
chapter2_2 = Chapter.create!(
 course: course2,
 title: "Faire la combinaison au clavier : 'Ctrl' et 'C' en même temps",
 content: "*Explications sur comment faire la combinaison de touche et expliquer que le texte est en mémoire*"
)
chapter2_3 = Chapter.create!(
 course: course2,
 title: "Selectionner la destination et faire une combinaison : 'Ctrl' et 'V'",
 content: "*Explications sur comment faire la combinaison de touche*"
)

chapter3_1 = Chapter.create!(
  course: course3,
  title: "Ouvrir le navigateur de fichier",
  content: "*Explications et image sur comment ouvrir le navigateur de dossiers*"
)
puts "CREATED CHAPTERS"

user1 = User.create!(username: "ZairaCosman", email: "zairacosman@hotmail.fr", password: "lewagon20012023")
user2 = User.create!(username: "LucasDGaetano", email: "lucasdgaetano@hotmail.fr", password: "123456")
user3 = User.create!(username: "ValetinBailly", email: "valentinbailly@numericable.fr", password: "123456")
user4 = User.create!(username: "PierreGuitard", email: "pierre.guitard@gmail.com", password: "123456")
user5 = User.create!(username: "LucileDevilla", email: "lucile.vilela@gmail.com", password: "123456")
puts "CREATED USERS"

ucourse1 = UsersCourse.create!(user: user2, course: course1)
ucourse2 = UsersCourse.create!(user: user4, course: course2)
ucourse3 = UsersCourse.create!(user: user1, course: course2)
ucourse4 = UsersCourse.create!(user: user3, course: course3)
ucourse5 = UsersCourse.create!(user: user1, course: course1)
ucourse6 = UsersCourse.create!(user: user5, course: course1)
ucourse7 = UsersCourse.create!(user: user2, course: course2)

puts "CREATED USERS_COURSES"

UsersCourse.all.each do |uc|
  uc.course.chapters.each do |chap|
    UsersChapter.create(users_course: uc, chapter: chap)
  end
end
puts "LINKED USERS_COURSES TO USERS_CHAPTERS"

comment1 = Comment.create!(user: user1, course: course1, content: "Je ne suis pas sur d'avoir bien compris le rythme")
comment2 = Comment.create!(user: user1, course: course2, content: "Je ne suis pas sur d'avoir bien compris comment appuyer sur deux touches en meme temps. merci.")
comment3 = Comment.create!(user: user2, course: course1, content: "C'était top")
comment4 = Comment.create!(user: user3, course: course3, content: "C'était bifbof")

puts "CREATED COMMENTS"

answer1 = Answer.create!(user: user4, comment: comment1, content: "Git gud")
answer2 = Answer.create!(user: user5, comment: comment2, content: "Git gud")
answer3 = Answer.create!(user: user3, comment: comment3, content: "Je suis bien d'acccord !")

puts "CREATED ANSWERS"
