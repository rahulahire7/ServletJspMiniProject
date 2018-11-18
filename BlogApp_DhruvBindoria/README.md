# :sparkles: Blog-App Jsp Servlet (MiniProject)

### It is basic Blogging app
#### The user can do following things ..
* Create a blog post
* Delete it
* See all the post he/she have created

### Has three packages
- Model
  - User.java
  - Post.java
- Controller
  - RegistrationServlet.java
  - LoginServlet.java
  - CreatePostServlet.java
  - ListAllPostServlet.java
  - ListUserPostServlet.java
  - DisplayPostServlet.java
- Dao
  - JdbcOps.java
  
### Has four views -- work under progress
* Home.jsp
* Register.jsp
* Login.jsp
* Profile.jsp
* CreatePost.jsp
* Post.jsp

###Table Schema
####Legend

Abbrevation | Fullform
------------|----------
nn | not null
u | unique
pk | primary key
fk | foreign key

#### Database Schema: userinfo
userid | uname | email | mobno | pass
-------|-------|-------|-------|-----
pk | nn | nnu | nnu | nnu
number(5) | varchar2(20) | varchar2(30) | number(10) | varchar2(30)

#### Database Schema: postinfo
postid | userid | title | paragraph
-------|--------|-------|----------
pk | fk | nn | -
number(5) | number(5) | varchar2(30) | varchar2(4000)

:bowtie: Best site to learn markdown https://guides.github.com/features/mastering-markdown/

:heart_eyes: Emoji cheat sheet https://github.com/ikatyang/emoji-cheat-sheet/blob/master/README.md

