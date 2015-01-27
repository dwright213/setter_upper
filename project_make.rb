#Dan's project builder script please use responsibly :D
#no cussing
#2015 danwright.co
#
project_name = "cool_project_name"

puts("Building directory structure...")

Dir.chdir ".."

system "mkdir", "-p", project_name
system "mkdir", "-p", (project_name + "/lib")
system "mkdir", "-p", (project_name + "/spec")
system "mkdir", "-p", (project_name + "/views")
system "mkdir", "-p", (project_name + "/public")
system "mkdir", "-p", (project_name + "/public/css")
system "mkdir", "-p", (project_name + "/public/img")


puts("Okay, creating files now...")


Dir.chdir project_name
`touch app.rb`
`touch Gemfile`

Dir.chdir "spec"
system `touch spec_helper.rb`


Dir.chdir "../views"
system `touch index.erb`


Dir.chdir "../public/css"
system `touch styles.css`

puts("K done <3")
