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

end
