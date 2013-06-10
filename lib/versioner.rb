require "versioner/version"

module Versioner
  def self.find_version_for version, list
    return list.last if version.nil?
    list.select { |i| i <= version }.last || list.first
  end
end
