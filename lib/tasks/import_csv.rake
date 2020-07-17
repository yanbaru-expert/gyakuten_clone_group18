require "import.rb"

namespace :import_csv do
  desc "CSVデータをaws_textsテーブルへインポートするタスク"
  task aws_texts: :environment do
    list = Import.csv_data(path: "db/csv_data/aws_text_data.csv")
    puts "インポート処理を開始"
    begin
      AwsText.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "moviesテーブルへCSVデータをインポートするタスク"
  task movies: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_data.csv")
    puts "インポート処理を開始"
    begin
      Movie.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

  desc "questionsテーブルへCSVデータをインポートするタスク"
  task questions: :environment do
    list = Import.csv_data(path: "db/csv_data/question_data.csv")
    puts "インポート処理を開始"
    begin
      Question.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗：UnknownAttributeError"
    end
  end

  desc "live_codingsテーブルへCSVデータをインポートするタスク"
  task live_codings: :environment do
    list = Import.csv_data(path: "db/csv_data/live_coding_data.csv")
    puts "インポート処理を開始"
    begin
      LiveCoding.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポート処理に失敗: UnknownAttributeError"
    end
  end

  desc "talkテーブルへCSVデータをインポートするタスク"
  task talk: :environment do
    list = Import.csv_data(path: "db/csv_data/talk_data.csv")
    puts "インポート処理を開始"
    begin
      Talk.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "informationテーブルへCSVデータをインポートするタスク"
  task information: :environment do
    list = Import.csv_data(path: "db/csv_data/information_data.csv")
    puts "インポート処理を開始"
    begin
      Information.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "movie_editテーブルへCSVデータをインポートするタスク"
  task movie_edit: :environment do
    list = Import.csv_data(path: "db/csv_data/movie_edit_data.csv")
    puts "インポート処理を開始"
    begin
      MovieEdit.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "writingテーブルへCSVデータをインポートするタスク"
  task writing: :environment do
    list = Import.csv_data(path: "db/csv_data/writing_data.csv")
    puts "インポート処理を開始"
    begin
      Writing.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "monetizeテーブルへCSVデータをインポートするタスク"
  task monetize: :environment do
    list = Import.csv_data(path: "db/csv_data/monetize_data.csv")
    puts "インポート処理を開始"
    begin
      Monetize.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "lineテーブルへCSVデータをインポートするタスク"
  task line: :environment do
    list = Import.csv_data(path: "db/csv_data/line_data.csv")
    puts "インポート処理を開始"
    begin
      Line.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end

  desc "Ruby/Railsテキスト教材テーブルへCSVデータをインポートするタスク"
  task texts: :environment do
    list = Import.csv_data(path: "db/csv_data/text_data.csv")
    puts "インポート処理を開始"
    begin
      Text.create!(list)
      puts "インポート完了!!"
    rescue ActiveModel::UnknownAttributeError => invalid
      puts "インポートに失敗:UnknownAttributeError"
    end
  end
end
