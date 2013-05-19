require "versioner/version"

module Versioner
  def self.find_version_for version, list
    return list.last if version.nil?

    selected_version = nil
    list.each_cons(2) do |previous_version, next_version|
      selected_version = next_version
      if next_version > version
        selected_version = previous_version
        break
      end
    end

    selected_version
  end
end
