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

course1 = Course.new(
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
  title: "Envoyer un email avec Gmail",
  description: "Dans ce cours vous apprendrez à vous servir de Gmail pour envoyer vos premiers messages",
  category: "Messagerie",
  difficulty: "Débutant"
)
course3.save!

course4 = Course.create!(
  title: "Faire une capture d'écran",
  description: "Dans ce cours vous apprendrez à faire une capture d'écran que vous soyez sur Mac ou sur PC",
  category: "Souris",
  difficulty: "Intermédiaire"
)
course4.save!

puts "CREATED COURSES"

chapter1_1 = Chapter.create!(
  course: course1,
  title: "Pour commencer",
  content: "Le double clic permet d’ouvrir un fichier, un dossier ou un logiciel dont l’icône se situerait sur le bureau ou dans une fenêtre.
  Le double-clic s'effectue le plus souvent sur le bouton gauche."
)

chapter1_2 = Chapter.create!(
  course: course1,
  title: "Qu’est ce qu’un double-clic ?",
  content: "Il s’agit d’une action courante utilisée dans divers programmes et applications informatiques.
  Le double clic c’est le fait de cliquer 2 fois consécutives et rapides sur le bouton gauche de la souris."
)

chapter1_3 = Chapter.create!(
  course: course1,
  title: "A quoi sert un double-clic ?",
  content: "Que vous utilisiez une souris traditionnelle ou un pavé tactile, il est essentiel d’apprendre à faire un double clic pour naviguer efficacement sur votre ordinateur."
)

file1 = URI.open("https://www.pariszigzag.fr/wp-content/uploads/2019/03/atelier-suzanne-valandon-paris-zigag-e1551883982843.jpg")
chapter2_1 = Chapter.new(
  course: course2,
  title: "Pour commencer",
  content: "Savoir comment effectuer un copier-coller vous permet d’économiser
  du temps et de l’effort lors de la manipulation de texte,
  d’images ou d’autres types de contenu. Cette fonction vous aide aussi à bien organiser votre ordinateur."
)
chapter2_1.photo.attach(io: file1, filename: "atelier.png", content_type: "image/png")
chapter2_1.save!

chapter2_2 = Chapter.create!(
 course: course2,
 title: "Qu’est-ce qu’un copier-coller ?",
 content: "Il s’agit d’une action qui a pour but de copier du texte, une image, ou un fichier pour la reproduire à
 l’identique sur un support numérique.Cette manipulation peut se faire aussi bien sur les fichiers que sur les dossiers."
)
chapter2_3 = Chapter.create!(
 course: course2,
 title: "A quoi sert un copier-coller ?",
 content: "La technique présentée dans ce cours peut être appliquée dans divers logiciels : <ul>
 <li> un traitement de texte, comme word, ou le bloc note. Vous pourrez copier et coller du texte, dupliquer rapidement un paragraphe ou une phrase pour agrémenter la mise en forme ou revoir la mise en page de vos documents.</li>
 <li> Dans votre navigateur internet, vous avez possibilité de copier du texte pour ensuite le coller dans un traitement de texte par exemple </li>
 <li> Ça marche également dans les tableurs comme excel dans lequel vous pouvez effectuer le collage de cellules.</li>
 <li> La technique du coller vous sera utile lors de la capture d’écran pour déposer votre capture dans un logiciel tel que Paint…</li>
 </ul>"
)

chapter2_4 = Chapter.create!(
  course: course2,
  title: "Faire un copier-coller : l’essentiel",
  content: "<ul>
  <li>Sélectionnez l’élément à copier en plaçant la souris sur l’élément et en le sélectionnant jusqu’à ce que vous le voyez surligné
  <li>Pressez en même temps les touches Ctrl et C pour copier
  <li>Allez à l’emplacement où vous désirez placer la copie
  <li>Appuyez simultanément sur les touches Ctrl et V pour coller
  <li>La copie de l’élément devrait apparaître dans l’emplacement que vous avez choisi
  </ul>"
)

chapter2_5 = Chapter.create!(
  course: course2,
  title: "Exercice pratique",
  content: "<div class='my-5' data-controller='copy-paste'>
    <p>Vous avez ici 2 cases, il y a du texte dans celle de gauche,
    il faut le mettre dans la case de droite à l'aide du copier/coller au clavier</p>
    <div class='d-flex justify-content-evenly mt-4'>
    <textarea cols='60' rows='2' data-action='copy->copy-paste#copy' data-copy-paste-target='copyArea'>Copiez moi dans la case de droite !</textarea>
    <textarea cols='60' rows='2' placeholder='copiez le texte de gauche ici !'
    data-action='paste->copy-paste#paste' data-copy-paste-target='pasteArea'></textarea>
    </div>
  </div>"
)


chapter3_1 = Chapter.create!(
  course: course3,
  title: "Pour commencer",
  content: "Envoyer un mail est une des actions de base sur Internet.
  Elle va vous permettre de communiquer avec vos amis et vos proches mais également avec les administrations. "
)

chapter3_2 = Chapter.create!(
  course: course3,
  title: "Les différents champs d’un email",
  content: "Dans un email, vous aurez différentes informations à entrer comme le destinataire, l’objet, le contenu.
  <ul>
  <li>Le champ 1 correspond la première étape de l’envoi d’un email, il s’agit de l’adresse email de votre destinataire. L’adresse que vous saisissez dans l’étape 1 doit être une adresse complète. Elle doit se composer d’un identifiant suivi du caractère @ puis du nom du fournisseur de messagerie (ex : gmail.com, orange.fr, yahoo.fr, hotmail.fr…). Ainsi, une adresse complète doit ressembler à direction@lewagon.fr
  <li>Le champ 2 correspond à l’objet de votre email, c’est en quelque sorte le sujet sur lequel porte votre email. La saisie de l’objet doit être limitée à quelques mots. Celui-ci est important car il permet de retrouver plus rapidement un mail dans sa boîte de messagerie.
  <li>Le champ 3 correspond tout simplement au contenu de votre email. Vous pouvez y écrire ce que vous souhaitez.
  </ul>"
)
file2 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701341783/Apprenticlic/Capture_d_e%CC%81cran_2023-11-29_a%CC%80_14.48.33_l4inw4.png")
chapter3_2.photo.attach(io: file2, filename: "chapter3_2_photo.jpg", content_type: "image/png")

chapter3_3 = Chapter.create!(
  course: course3,
  title: "Comment envoyer un email ?",
  content: " <ol>
  <li>Cliquez sur le bouton NOUVEAU MESSAGE. Lorsque vous cliquez sur le bouton NOUVEAU MESSAGE, une nouvelle fenêtre s’ouvre dans laquelle vous allez remplir les différents champs détaillés au-dessus et rédiger votre message
  <li>Dans le champ de saisie À, tapez l’adresse email de votre destinataire
  <li>Complétez le champ objet en précisant le sujet de votre email
  <li>Dans le dernier champ, écrivez votre message
  <li>Cliquez sur le bouton Envoyer pour faire partir votre message
  </ol>
  Ces 5 étapes sont matérialisées dans la copie d’écran suivante :"
)

chapter4_1 = Chapter.create!(
  course: course4,
  title: "Pour commencer",
  content: "Une capture d’écran est une photo du contenu apparaissant à l’écran qui peut être enregistrée sous la forme d’un fichier dans la mémoire de votre ordinateur.
  Une capture d’écran peut-être une photo de l’ensemble ou d’une portion de votre écran."
)

chapter4_2 = Chapter.create!(
  course: course4,
  title: "Vidéo explicative sur Mac ou PC",
  content: "Afin de pouvoir vous aider à mieux comprendre et à reproduire une capture d’écran, nous vous proposons deux vidéos explicatives. Une sur le système Mac OS et une autre sur le système PC."
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
