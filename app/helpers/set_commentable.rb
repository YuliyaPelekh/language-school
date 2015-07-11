module SetCommentable
  private

  def set_commentable
    params.each do |name, value|
      if (name =~ /(.+)_id$/)
        resource = $1.classify.constantize
        @commentable = resource.find(value) if resource.is_commentable?
      end
    end
  end
end
