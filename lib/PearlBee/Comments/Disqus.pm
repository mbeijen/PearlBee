package PearlBee::Comments::Disqus;
use Moose;
use namespace::autoclean;
with 'PearlBee::Role::CommentsEngine';

has '+post_comment_count_tt' => (
    default => 'comments/disqus/post_comment_count.tt',
);

has '+list_comments_tt' => (
    default => 'comments/disqus/list_comments_tt.tt',
);

has '+scripts_tt' => (
    default => 'comments/disqus/scripts.tt',
);

has '+comments_dashboard_link' => (
    default => sub { 'https://' . $_[0]->shortname . '.disqus.com/admin/' },
);

has shortname => (
    is => 'ro',
    isa => 'Str',
    required => 1,
);

__PACKAGE__->meta->make_immutable();

1;