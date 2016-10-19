module ApplicationHelper
def post_img(picture)
    return image_tag(picture.image, alt: picture.name) if picture.image?
end
end
