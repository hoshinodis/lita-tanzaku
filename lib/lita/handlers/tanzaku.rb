module Lita
  module Handlers
    class Tanzaku < Handler
      route(/^tanzaku\s+([^ ]+)/i, :tanzaku) 

      def tanzaku(response)
        negaigoto = response.args[0].chars
        tanzaku = "┏┷┓\n" + negaigoto.map{|item| "┃" + item + "┃\n"}.join + "┗━★"
        response.reply(tanzaku.gsub("ー", "｜"))
      end
    end

    Lita.register_handler(Tanzaku)
  end
end
