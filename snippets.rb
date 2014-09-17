#model snippers
validates   :name, presence: true, uniqueness: true
errors.add("Name", "already exists")

#get sum without query
.map{|q|q.points}.inject{|sum,q|sum+q}

#eager load
User.eager_load(:posts) 

#select box
=f.select( :product_category_id,
  options_from_collection_for_select(@categories,"id","name",
    f.object.product_category_id),{},:class =>"form-control")



=select_tag :status,
options_for_select(@status, params[:status]),
prompt: "Select All", include_blank: false,
:class=>"form-control search-select"


#three ways to call a method
greeter = Greeter.new 
greeter.send :greeting 
greeter.method(:greeting).call 


#match the ff
Hash[[1,2,3,4].zip([5,6,7,8])]
 {1=>5, 2=>6, 3=>7, 4=>8}

#put lazy para d mag hang
(1..Float::INFINITY).map{ |i| i*i }.first(10)?

#rails security mailing list
https://groups.google.com/forum/#!forum/ruby-security-ann

rspec path/to/spec/file.rb


#nested association and validation
accepts_nested_attributes_for, allow_destroy: true

, reject_if: proc { |attributes| attributes['title'].blank? }

, reject_if: :reject_posts

def reject_posts(attributed)
  attributed['title'].blank?
end



http://api.rubyonrails.org/


Lambdas check the number of arguments, while procs do not
Lambdas and procs treat the ‘return’ keyword differently

#one on one
@article = Article.new
@article.build_comment

#one to many
@article = Article.new
@article.comment.build
