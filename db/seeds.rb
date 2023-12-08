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

file_course_1 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701967236/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_17.40.18_ime7yr.png")
course1 = Course.new(
  title: "S'entrainer à faire un double-clic",
  description: "Dans ce cours, suivez le rythme pour vous entrainer a reussir tout vos double-clics !",
  category: "Souris",
  difficulty: "Débutant",
)
course1.photo.attach(io: file_course_1, filename: "course1.png", content_type: "image/png")
course1.save!

file_course_2 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701947781/Apprenticlic/Ctrl-C-and-Ctrl-V-18727696-1-1-580x387_q7ef2f.jpg")
course2 = Course.create!(
  title: "Apprendre à faire un copier/coller avec le clavier",
  description: "Dans ce cours vous apprendrez à utiliser les combinaisons de touches pour faire un copier/coller",
  category: "Clavier",
  difficulty: "Intermédiaire",
)
course2.photo.attach(io: file_course_2, filename: "course1.png", content_type: "image/jpeg")
course2.save!

file_course_3 = URI.open("https://www.cleanfox.io/blog/wp-content/uploads/2021/01/GMAIL-1024x772.png")
course3 = Course.create!(
  title: "Envoyer un email avec Gmail",
  description: "Dans ce cours vous apprendrez à vous servir de Gmail pour envoyer vos premiers messages",
  category: "Messagerie",
  difficulty: "Débutant",
)
course3.photo.attach(io: file_course_3, filename: "course1.png", content_type: "image/jpeg")
course3.save!

file_course_4 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701967159/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_17.38.52_vwycc1.png")
course4 = Course.create!(
  title: "Faire une capture d'écran",
  description: "Dans ce cours vous apprendrez à faire une capture d'écran que vous soyez sur Mac ou sur PC",
  category: "Souris",
  difficulty: "Intermédiaire",
)
course4.photo.attach(io: file_course_4, filename: "course4.png", content_type: "image/png")
course4.save!

file_course_5 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701967029/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_17.36.54_dz1sjo.png")
course5 = Course.create!(
  title: "Glisser-Déposer",
  description: "Dans ce cours vous apprendrez à déplacer un fichier pour le ranger à un autre endroit sur votre ordinateur rien qu'avec votre souris ",
  category: "Souris",
  difficulty: "Intermédiaire"
)
course5.photo.attach(io: file_course_5, filename: "course1.png", content_type: "image/png")
course5.save!

file_course_6 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701955467/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_14.23.54_vlcxte.png")
course6 = Course.create!(
  title: "Combinaison de touches clavier",
  description: "Dans ce cours vous apprendrez à faire un raccourci avec votre clavier à l'aide de l'utilisation d'une ou plusieurs touches afin de réaliser une action ou une commande sur votre ordinateur.",
  category: "Clavier",
  difficulty: "Débutant",
)
course6.photo.attach(io: file_course_6, filename: "course6.png", content_type: "image/png")
course6.save!

file_course_7 = URI.open("https://www.lifewire.com/thmb/als0_2avIl194PRlLgIUasviu-w=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Select-File-Click-Drag-840c3468a23b46199368e4826ddfd6f7.jpg")
course7 = Course.create!(
  title: "Sélectionner plusieurs fichiers ou dossiers",
  description: "Dans ce cours vous apprendrez à sélectionner plusieurs fichiers en même temps pour gagner du temps et bien organiser votre ordinateur.",
  category: "Navigation",
  difficulty: "Intermédiaire",
)
course7.photo.attach(io: file_course_7, filename: "course1.png", content_type: "image/jpeg")
course7.save!

file_course_8 = URI.open("https://www.cleanfox.io/blog/wp-content/uploads/2021/01/GMAIL-1024x772.png")
course8 = Course.create!(
  title: "Créer une adresse gmail messagerie",
  description: "Dans ce cours vous allez découvrir les principales étapes pour créer une adresse de messagerie gmail.",
  category: "Messagerie",
  difficulty: "Débutant",
)
course8.photo.attach(io: file_course_8, filename: "course1.png", content_type: "image/jpeg")
course8.save!

file_course_9 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701956785/Apprenticlic/logo-google_vvmfxr.png")
course9 = Course.create!(
  title: "Faire une recherche sur Google",
  description: "Dans ce cours, découvrez comment effectuer des recherches efficaces et précises sur Internet grâce au moteur de recherche de Google.",
  category: "Internet",
  difficulty: "Débutant",
)
course9.photo.attach(io: file_course_9, filename: "course9.png", content_type: "image/png")
course9.save!

file_course_10 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701967741/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_17.48.46_p0odrk.png")
course10 = Course.create!(
  title: "Enregistrer un fichier en pdf",
  description: "Dans ce cours, vous apprendrez à enregistrer un fichier pdf à partir de n'importe quel document.",
  category: "Internet",
  difficulty: "Débutant",
)
course10.photo.attach(io: file_course_10, filename: "course1.png", content_type: "image/jpeg")
course10.save!

puts "CREATED COURSES"

chapter1_1 = Chapter.create!(
  course: course1,
  title: "Pour commencer",
  content: "Le double clic permet d'ouvrir un fichier, un dossier ou un logiciel dont l'icône se situerait sur le bureau ou dans une fenêtre.",
)

chapter1_2 = Chapter.create!(
  course: course1,
  title: "Qu'est ce qu'un double-clic ?",
  content: "Il s'agit d'une action courante utilisée dans divers programmes et applications informatiques.
  Le double clic c'est le fait de cliquer 2 fois consécutives et rapides sur le bouton gauche de la souris.",
)

chapter1_3 = Chapter.create!(
  course: course1,
  title: "A quoi sert un double-clic ?",
  content: "Que vous utilisiez une souris traditionnelle ou un pavé tactile, il est essentiel d'apprendre à faire un double clic pour naviguer efficacement sur votre ordinateur.",
)

chapter1_4 = Chapter.create!(
  course: course1,
  title: "Exercice pratique",
  content: "<div class='exercice-clic' data-controller='double-clic'>
  <p>Double-cliquer avec votre souris dans la zone carrée.
  Quand vous réussissez votre double-clic, le fond de la case deviendra vert.<br>
  Lorsque la case est rose, vous devez recommencer votre double-clic pour qu'elle passe au vert.</p>
  <div data-action='click->double-clic#oneClick'
  style='width: 100px; height: 100px; background-color: #ccc;'>
  </div>
</div>"
)

chapter2_1 = Chapter.new(
  course: course2,
  title: "Pour commencer",
  content: "Savoir comment effectuer un copier-coller vous permet d'économiser
  du temps et de l'effort lors de la manipulation de texte,
  d'images ou d'autres types de contenu. Cette fonction vous aide aussi à bien organiser votre ordinateur.",
)
chapter2_1.save!

chapter2_2 = Chapter.create!(
  course: course2,
  title: "Qu'est-ce qu'un copier-coller ?",
  content: "Il s'agit d'une action qui a pour but de copier du texte, une image, ou un fichier pour la reproduire à
 l'identique sur un support numérique. Cette manipulation peut se faire aussi bien sur des fichiers que sur des dossiers.
 Vous pourrez appliquer le copier/coller dans divers logiciels comme un traitement de texte, word, bloc note,
 fichier Excel mais aussi votre navigateur Internet."
)

file1 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701944009/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_11.12.09_svqzhx.png")
chapter2_3 = Chapter.create!(
  course: course2,
  title: "Sélectionner l'élément à copier/coller",
  content: "Sélectionnez l'élément à copier en plaçant la souris sur l'élément et en le sélectionnant jusqu'à ce que vous le voyiez surligné comme la photo ci-dessous."
)
chapter2_3.photo.attach(io: file1, filename: "selection.png", content_type: "image/png")

file2 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701944009/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_11.00.36_jmaako.png")
chapter2_4 = Chapter.create!(
  course: course2,
  title: "Effectuer l'action copier",
  content: "Pour l'action du copier, vous devez presser les touches Ctrl et C en même temps."
)
chapter2_4.photo.attach(io: file2, filename: "copier.png", content_type: "image/png")

file3 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701944009/Apprenticlic/Capture_d_e%CC%81cran_2023-12-07_a%CC%80_11.00.51_srcuhc.png")
chapter2_5 = Chapter.create!(
  course: course2,
  title: "Effectuer l'action coller",
  content: "Pour l'action du coller, vous devez presser les touches Ctrl et V en même temps.
  La copie de l'élément devrait apparaître dans l'emplacement que vous avez choisi."
)
chapter2_5.photo.attach(io: file3, filename: "coller.png", content_type: "image/png")

chapter2_6 = Chapter.create!(
  course: course2,
  title: "Exercice pratique",
  content: "<div class='my-3' data-controller='copy-paste' data-copy-paste-is-copied-value='false'  data-copy-paste-is-pasted-value='false'>
    <p>Vous avez ici 2 cases, il y a du texte dans celle de gauche,
    il faut le mettre dans la case de droite à l'aide du copier/coller au clavier.<br>
    Quand vous réussirez chacune des actions, le fond de chaque case deviendra vert.</p>
    <div class='d-flex justify-content-between mt-4'>
    <textarea cols='60' rows='2' data-action='copy->copy-paste#copy' data-copy-paste-target='copyArea'>Copiez-moi dans la case de droite !</textarea>
    <textarea cols='60' rows='2' placeholder='Collez le texte de gauche ici !'
    data-action='paste->copy-paste#paste' data-copy-paste-target='pasteArea'></textarea>
    </div>
    <div class='d-none text-center my-3' data-copy-paste-target='congrats'>
      <h3>Bravo vous avez réussi !</h3>
    </div>
  </div>"
)


chapter3_1 = Chapter.create!(
  course: course3,
  title: "Pour commencer",
  content: "Envoyer un mail est une des actions de base sur Internet.
  Elle va vous permettre de communiquer avec vos amis et vos proches mais également avec les administrations. ",
)

chapter3_2 = Chapter.create!(
  course: course3,
  title: "Les différents champs d'un email",
  content: "Dans un email, vous aurez différentes informations à entrer comme le destinataire, l'objet, le contenu.
  <ul>
  <li>Le champ 1 correspond la première étape de l'envoi d'un email, il s'agit de l'adresse email de votre destinataire. L'adresse que vous saisissez dans l'étape 1 doit être une adresse complète. Elle doit se composer d'un identifiant suivi du caractère @ puis du nom du fournisseur de messagerie (ex : gmail.com, orange.fr, yahoo.fr, hotmail.fr…). Ainsi, une adresse complète doit ressembler à direction@lewagon.fr
  <li>Le champ 2 correspond à l'objet de votre email, c'est en quelque sorte le sujet sur lequel porte votre email. La saisie de l'objet doit être limitée à quelques mots. Celui-ci est important car il permet de retrouver plus rapidement un mail dans sa boîte de messagerie.
  <li>Le champ 3 correspond tout simplement au contenu de votre email. Vous pouvez y écrire ce que vous souhaitez.
  </ul>",
)
file4 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701341783/Apprenticlic/Capture_d_e%CC%81cran_2023-11-29_a%CC%80_14.48.33_l4inw4.png")
chapter3_2.photo.attach(io: file4, filename: "chapter3_2_photo.jpg", content_type: "image/png")

chapter3_3 = Chapter.create!(
  course: course3,
  title: "Comment envoyer un email ?",
  content: " <ol>
  <li>Cliquez sur le bouton NOUVEAU MESSAGE. Lorsque vous cliquez sur le bouton NOUVEAU MESSAGE, une nouvelle fenêtre s'ouvre dans laquelle vous allez remplir les différents champs détaillés au-dessus et rédiger votre message
  <li>Dans le champ de saisie À, tapez l'adresse email de votre destinataire
  <li>Complétez le champ objet en précisant le sujet de votre email
  <li>Dans le dernier champ, écrivez votre message
  <li>Cliquez sur le bouton Envoyer pour faire partir votre message
  </ol>
  Ces 5 étapes sont matérialisées dans la copie d'écran suivante :",
)
file5 = URI.open("https://res.cloudinary.com/dzqqjrcor/image/upload/v1701341809/Apprenticlic/Capture_d_e%CC%81cran_2023-11-29_a%CC%80_14.43.31_sbkdn6.png")
chapter3_3.photo.attach(io: file5, filename: "chapter3_2_photo.jpg", content_type: "image/png")

chapter4_1 = Chapter.create!(
  course: course4,
  title: "Pour commencer",
  content: "Une capture d'écran est une photo du contenu apparaissant à l'écran qui peut être enregistrée sous la forme d'un fichier dans la mémoire de votre ordinateur.
  Une capture d'écran peut-être une photo de l'ensemble ou d'une portion de votre écran.",
)

chapter4_2 = Chapter.create!(
  course: course4,
  title: "Vidéo explicative sur Mac",
  content: "Afin de pouvoir vous aider à mieux comprendre et à reproduire une capture d'écran, nous vous proposons deux vidéos explicatives. Une sur le système Mac OS et une autre sur le système PC.",
)
video1 = URI.open("https://res.cloudinary.com/dzqqjrcor/video/upload/v1701341713/Apprenticlic/Comment_faire_une_capture_d_e%CC%81cran_dxbuwf.mov")
chapter4_2.video.attach(io: video1, filename: "chapter4_2_video.mov", content_type: "video/mov")

chapter4_3 = Chapter.create!(
  course: course4,
  title: "Vidéo explicative sur PC/Windows11",
  content: "Afin de pouvoir vous aider à mieux comprendre et à reproduire une capture d'écran, nous vous proposons deux vidéos explicatives. Une sur le système Mac OS et une autre sur le système PC.",
)
video2 = URI.open("https://res.cloudinary.com/dzqqjrcor/video/upload/v1701812866/Apprenticlic/Faire_une_capture_d_%C3%A9cran_oehb0q.mp4")
chapter4_3.video.attach(io: video2, filename: "chapter4_3_video.mov", content_type: "video/mov")

chapter5_1 = Chapter.create!(
  course: course5,
  title: "Pour commencer",
  content: "Le glisser-déposer (ou <em>'drag and drop'</em> en anglais) est une technique pour <strong>déplacer ou copier</strong> un fichier d'un dossier de départ vers un dossier 'd'arrivée' en un seul geste avec votre <strong>souris</strong>. C'est un gain de temps car cela évite de devoir faire des copier-coller et de naviguer dans l'ordinateur entre temps"
)

chapter5_2 = Chapter.create!(
  course: course5,
  title: "Pourquoi et où l'utiliser",
  content: "C'est une technique que l'on peut utiliser sur PC mais également sur les appareils mobiles, pour déplacer et ranger ses applications par exemple. Sur PC, vous pouvez vous en servir pour déplacer et ranger vos dossiers, mais aussi uploader un fichier sur internet lorsque cela vous est demander, vous verrez une petite fleche disant 'déposez votre fichier ici' -> c'est un glisser-déposé qui est attendu ! "
)

chapter5_3 = Chapter.create!(
  course: course5,
  title: "Comment faire un glisser-déposer",
  content: "Il faut positionner votre curseur sur le fichier que vous souhaitez déplacer. <br> Il faut ensuite cliquer avec le bouton gauche de la souris puis <strong>maintenir le clic tout en déplaçant la souris</strong> et le curseur vers le fichier de destination (ou le site internet)"
)
file5_3 = URI.open("https://www.digitalcitizen.life/wp-content/uploads/2021/07/drag_drop-2-1.png")
chapter5_3.photo.attach(io: file5_3, filename: "chapter5_2_photo.jpg", content_type: "image/png")

chapter5_3 = Chapter.create!(
  course: course5,
  title: "Exercice pratique",
  content: "*En cours de construction*"
)

chapter6_1 = Chapter.create!(
  course: course6,
  title: "Pour commencer",
  content: "La combinaison de touche au clavier permet d'effectuer des commandes spécifiques sur l'ordinateur. On acrives donc ces commandes en pressant en même temps 2 ou plus touches du clavier"
)

chapter6_2 = Chapter.create!(
  course: course6,
  title: "Bon à savoir",
  content: "La combinaison de touches ne demandent pas presser d'un coup les boutons en même temps, il suffit d'en maintenir un, puis d'appuyer sur le deuxieme. Sans rester appuyer, juste une pression suffira. Lorsque vous verrez une combinaison de touche, les touches à <strong>maintenir appuyées en premier</strong> seront toujours <strong>Ctrl</strong> et/ou <strong>Alt</strong> et/ou <strong>Shit/Maj</strong>"
)

chapter7_1 = Chapter.create!(
  course: course7,
  title: "Pour commencer",
  content: "La sélection de plusieurs fichiers permet d'être plus rapide sur son ordinateur lorsque l'on doit deplacer ou supprimer des fichiers, cela évite de le faire 'à la main' un par un"
)

chapter7_2 = Chapter.create!(
  course: course7,
  title: "1ère méthode : à la souris",
  content: "Faites un cadre de sélection (attention : sans que le premier clic soit sur un des fichiers) avec le clic gauche de la souris, le cadre doit englober les fichiers que vous souhaitez. Une fois cela fait, relâchez le bouton gauche de la souris : vos fichiers sont sélectionnés !"
)

chapter7_3 = Chapter.create!(
  course: course7,
  title: "2ème méthode : avec la touche Ctrl",
  content: "Maintenez la touche Ctrl enfoncée, puis faites des clic gauches sur chacun des fichiers que vous souhaitez, vous verrez alors que chacun des fichiers sont bien sélectionnés chacun leurs tours. Attention de bien garder la touche Ctrl enfoncée <strong>PENDANT</strong> que vous faites chacun des clics. Ne la relevée qu'une fois que vous avez terminé votre selection. <br>Astuce: si vous faites une erreur et que vous selectionnez un fichier que vous ne voulez pas, il vous suffit de recliquer dessus toujours avec la touche Ctrl enfoncée pour le déselectionner ! "
)

chapter7_3 = Chapter.create!(
  course: course7,
  title: "2ème méthode : avec la touche Shift/Maj",
  content: "Face à une liste de vos fichiers :<ol>
  <li>Faites un clic gauche sur le premier fichier de la liste</li>
  <li>Appuyez sur la touche Shift/Maj et maintenez la appuyé (l'élément sélectionné de l'étape suivant doit toujours l'être)</li>
  <li>Faites un clic gauche sur le dernier fichier de la liste</li>
  </ol>
  Tout les fichiers entre le premier et le dernier élément de votre liste sont ainsi sélectionnés !"
)

chapter8_1 = Chapter.create!(
  course: course8,
  title: "Pour commencer",
  content: "*Cours en construction, revenez plus tard*"
)

chapter9_1 = Chapter.create!(
  course: course9,
  title: "Pour commencer",
  content: "*Cours en construction, revenez plus tard*"
)

chapter10_1 = Chapter.create!(
  course: course10,
  title: "Pour commencer",
  content: "*Cours en construction, revenez plus tard*"
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

answer1 = Answer.create!(user: user4, comment: comment1, content: "Essaie encore")
answer2 = Answer.create!(user: user5, comment: comment2, content: "Il faut maintenir Ctrl enfoncé")
answer3 = Answer.create!(user: user3, comment: comment3, content: "Je suis bien d'acccord !")

puts "CREATED ANSWERS"
