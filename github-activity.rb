#!/usr/bin/env ruby
require 'octokit'
require 'dotenv'

Dotenv.load
def event_type_translator(payload:)
    {
        'CommitCommentEvent' => "Left the following commit comment #{payload.comment}",
        'CreateEvent' => "Created a #{payload.ref_type}.",
        'DeleteEvent' => "Deleted a #{payload.ref_type}.",
        'ForkEvent' => "Forked the following repository #{payload.forkee&.full_name} (#{payload.forkee&.html_url}).",
        'GollumEvent' => "Created or updated a Wiki page.",
        'IssueCommentEvent' => "#{payload.action} the following comment: #{payload.comment&.body} related to the issue #{payload.issue&.body}",
        'IssuesEvent' => "#{payload.action} the following issue #{payload.issue&.body}",
        'MemberEvent' => "Collaborator #{payload.member&.name} (#{payload.member&.email}) #{payload.action}",
        'PublicEvent' => "A private repository was made public.",
        'PullRequestEvent' => "The following pull request: #{payload.pull_request&.title} has been #{payload.action}.",
        'PullRequestReviewEvent' => "A review on #{payload.pull_request&.title} has been #{payload.action}.",
        'PullRequestReviewCommentEvent' => "The following comment has been #{payload.action}: #{payload.comment&.body}.",
        'PullRequestReviewThreadEvent' => "A thread on #{payload.pull_request&.title} has been #{payload.action}.",
        'PushEvent' => "Pushed #{payload.size} commits to #{payload.head}.",
        'ReleaseEvent' => "Release event has been made.",
        'SponsorshipEvent' => "A new sponsorship has been made.",
        'WatchEvent' => "Starred a new repo."
    }
end

# Provide authentication credentials
client = Octokit::Client.new(:bearer => ENV['GITHUB_API_TOKEN'], per_page: 100)

events = client.get("https://api.github.com/users/#{ARGV[0]}/events/public")

if events.length > 0
    events.each do |event|
        puts "- #{event_type_translator(payload: event.payload)[event.type]}"
    end
end