class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    split_msg = @line.split(":")
    msg = split_msg[1]
    msg.strip
  end

  def log_level
    # how do i do this without creating so many variables? Using the `!`?
    split_loglvl = @line.split(":")
    loglvl = split_loglvl[0]
    halflvl = loglvl.gsub("[", '')
    fulllvl = halflvl.gsub("]", '')
    fulllvl.strip
    fulllvl.downcase
  end

  def reformat
    split_reformat = @line.split(":")
    i_log = split_reformat[0]
    msg = split_reformat[1]
    half_log = i_log.gsub("[", "(")
    log = half_log.gsub("]", ")")
    msg.strip + " " + log.downcase
  end
end
