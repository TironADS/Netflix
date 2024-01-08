

// https://jsontodart.zariman.dev/     ///////////////

class NetflixModel {
  List<Titles>? titles;
  List<Suggestions>? suggestions;

  NetflixModel({this.titles, this.suggestions});

  NetflixModel.fromJson(Map<String, dynamic> json) {
    titles = json["titles"] == null ? null : (json["titles"] as List).map((e) => Titles.fromJson(e)).toList();
    suggestions = json["suggestions"] == null ? null : (json["suggestions"] as List).map((e) => Suggestions.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(titles != null) {
      _data["titles"] = titles?.map((e) => e.toJson()).toList();
    }
    if(suggestions != null) {
      _data["suggestions"] = suggestions?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Suggestions {
  Summary1? summary;

  Suggestions({this.summary});

  Suggestions.fromJson(Map<String, dynamic> json) {
    summary = json["summary"] == null ? null : Summary1.fromJson(json["summary"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(summary != null) {
      _data["summary"] = summary?.toJson();
    }
    return _data;
  }
}

class Summary1 {
  dynamic unifiedEntityId;
  dynamic id;
  dynamic type;
  dynamic entityId;
  dynamic name;
  bool? isTitleGroup;
  dynamic matchedlocale;

  Summary1({this.unifiedEntityId, this.id, this.type, this.entityId, this.name, this.isTitleGroup, this.matchedlocale});

  Summary1.fromJson(Map<String, dynamic> json) {
    unifiedEntityId = json["unifiedEntityId"];
    id = json["id"];
    type = json["type"];
    entityId = json["entityId"];
    name = json["name"];
    isTitleGroup = json["isTitleGroup"];
    matchedlocale = json["matchedlocale"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["unifiedEntityId"] = unifiedEntityId;
    _data["id"] = id;
    _data["type"] = type;
    _data["entityId"] = entityId;
    _data["name"] = name;
    _data["isTitleGroup"] = isTitleGroup;
    _data["matchedlocale"] = matchedlocale;
    return _data;
  }
}

class Titles {
  Availability? availability;
  bool? inRemindMeList;
  Queue? queue;
  Summary? summary;
  dynamic episodeCount;
  JawSummary? jawSummary;

  Titles({this.availability, this.inRemindMeList, this.queue, this.summary, this.episodeCount, this.jawSummary});

  Titles.fromJson(Map<String, dynamic> json) {
    availability = json["availability"] == null ? null : Availability.fromJson(json["availability"]);
    inRemindMeList = json["inRemindMeList"];
    queue = json["queue"] == null ? null : Queue.fromJson(json["queue"]);
    summary = json["summary"] == null ? null : Summary.fromJson(json["summary"]);
    episodeCount = json["episodeCount"];
    jawSummary = json["jawSummary"] == null ? null : JawSummary.fromJson(json["jawSummary"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(availability != null) {
      _data["availability"] = availability?.toJson();
    }
    _data["inRemindMeList"] = inRemindMeList;
    if(queue != null) {
      _data["queue"] = queue?.toJson();
    }
    if(summary != null) {
      _data["summary"] = summary?.toJson();
    }
    _data["episodeCount"] = episodeCount;
    if(jawSummary != null) {
      _data["jawSummary"] = jawSummary?.toJson();
    }
    return _data;
  }
}

class JawSummary {
  TrackIds? trackIds;
  List<Tags>? tags;
  List<Cast>? cast;
  List<Creators>? creators;
  List<dynamic>? directors;
  List<dynamic>? writers;
  List<Genres>? genres;
  Availability1? availability;
  ContextualSynopsis? contextualSynopsis;
  CurrentContextualSynopsis? currentContextualSynopsis;
  Maturity? maturity;
  dynamic unifiedEntityId;
  dynamic id;
  dynamic type;
  bool? isOriginal;
  LiveEvent1? liveEvent;
  dynamic videoId;
  dynamic requestId;
  dynamic userRatingRequestId;
  dynamic title;
  dynamic copyright;
  dynamic releaseYear;
  bool? watched;
  bool? hasAudioDescription;
  dynamic synopsis;
  dynamic synopsisRegular;
  bool? hasSensitiveMetaData;
  Delivery? delivery;
  TitleMaturity? titleMaturity;
  Broadcaster? broadcaster;
  TrailerSummary? trailerSummary;
  dynamic supplementalMessage;
  dynamic supplementalMessageIcon;
  VideoMerch? videoMerch;
  dynamic seasonAbbr;
  dynamic seasonCount;
  dynamic numSeasonsLabel;
  dynamic episodeCount;
  dynamic episodeTitle;
  LogoImage? logoImage;
  BackgroundImage? backgroundImage;

  JawSummary({this.trackIds, this.tags, this.cast, this.creators, this.directors, this.writers, this.genres, this.availability, this.contextualSynopsis, this.currentContextualSynopsis, this.maturity, this.unifiedEntityId, this.id, this.type, this.isOriginal, this.liveEvent, this.videoId, this.requestId, this.userRatingRequestId, this.title, this.copyright, this.releaseYear, this.watched, this.hasAudioDescription, this.synopsis, this.synopsisRegular, this.hasSensitiveMetaData, this.delivery, this.titleMaturity, this.broadcaster, this.trailerSummary, this.supplementalMessage, this.supplementalMessageIcon, this.videoMerch, this.seasonAbbr, this.seasonCount, this.numSeasonsLabel, this.episodeCount, this.episodeTitle, this.logoImage, this.backgroundImage});

  JawSummary.fromJson(Map<String, dynamic> json) {
    trackIds = json["trackIds"] == null ? null : TrackIds.fromJson(json["trackIds"]);
    tags = json["tags"] == null ? null : (json["tags"] as List).map((e) => Tags.fromJson(e)).toList();
    cast = json["cast"] == null ? null : (json["cast"] as List).map((e) => Cast.fromJson(e)).toList();
    creators = json["creators"] == null ? null : (json["creators"] as List).map((e) => Creators.fromJson(e)).toList();
    directors = json["directors"] ?? [];
    writers = json["writers"] ?? [];
    genres = json["genres"] == null ? null : (json["genres"] as List).map((e) => Genres.fromJson(e)).toList();
    availability = json["availability"] == null ? null : Availability1.fromJson(json["availability"]);
    contextualSynopsis = json["contextualSynopsis"] == null ? null : ContextualSynopsis.fromJson(json["contextualSynopsis"]);
    currentContextualSynopsis = json["currentContextualSynopsis"] == null ? null : CurrentContextualSynopsis.fromJson(json["currentContextualSynopsis"]);
    maturity = json["maturity"] == null ? null : Maturity.fromJson(json["maturity"]);
    unifiedEntityId = json["unifiedEntityId"];
    id = json["id"];
    type = json["type"];
    isOriginal = json["isOriginal"];
    liveEvent = json["liveEvent"] == null ? null : LiveEvent1.fromJson(json["liveEvent"]);
    videoId = json["videoId"];
    requestId = json["requestId"];
    userRatingRequestId = json["userRatingRequestId"];
    title = json["title"];
    copyright = json["copyright"];
    releaseYear = json["releaseYear"];
    watched = json["watched"];
    hasAudioDescription = json["hasAudioDescription"];
    synopsis = json["synopsis"];
    synopsisRegular = json["synopsisRegular"];
    hasSensitiveMetaData = json["hasSensitiveMetaData"];
    delivery = json["delivery"] == null ? null : Delivery.fromJson(json["delivery"]);
    titleMaturity = json["titleMaturity"] == null ? null : TitleMaturity.fromJson(json["titleMaturity"]);
    broadcaster = json["broadcaster"] == null ? null : Broadcaster.fromJson(json["broadcaster"]);
    trailerSummary = json["trailerSummary"] == null ? null : TrailerSummary.fromJson(json["trailerSummary"]);
    supplementalMessage = json["supplementalMessage"];
    supplementalMessageIcon = json["supplementalMessageIcon"];
    videoMerch = json["videoMerch"] == null ? null : VideoMerch.fromJson(json["videoMerch"]);
    seasonAbbr = json["seasonAbbr"];
    seasonCount = json["seasonCount"];
    numSeasonsLabel = json["numSeasonsLabel"];
    episodeCount = json["episodeCount"];
    episodeTitle = json["episodeTitle"];
    logoImage = json["logoImage"] == null ? null : LogoImage.fromJson(json["logoImage"]);
    backgroundImage = json["backgroundImage"] == null ? null : BackgroundImage.fromJson(json["backgroundImage"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(trackIds != null) {
      _data["trackIds"] = trackIds?.toJson();
    }
    if(tags != null) {
      _data["tags"] = tags?.map((e) => e.toJson()).toList();
    }
    if(cast != null) {
      _data["cast"] = cast?.map((e) => e.toJson()).toList();
    }
    if(creators != null) {
      _data["creators"] = creators?.map((e) => e.toJson()).toList();
    }
    if(directors != null) {
      _data["directors"] = directors;
    }
    if(writers != null) {
      _data["writers"] = writers;
    }
    if(genres != null) {
      _data["genres"] = genres?.map((e) => e.toJson()).toList();
    }
    if(availability != null) {
      _data["availability"] = availability?.toJson();
    }
    if(contextualSynopsis != null) {
      _data["contextualSynopsis"] = contextualSynopsis?.toJson();
    }
    if(currentContextualSynopsis != null) {
      _data["currentContextualSynopsis"] = currentContextualSynopsis?.toJson();
    }
    if(maturity != null) {
      _data["maturity"] = maturity?.toJson();
    }
    _data["unifiedEntityId"] = unifiedEntityId;
    _data["id"] = id;
    _data["type"] = type;
    _data["isOriginal"] = isOriginal;
    if(liveEvent != null) {
      _data["liveEvent"] = liveEvent?.toJson();
    }
    _data["videoId"] = videoId;
    _data["requestId"] = requestId;
    _data["userRatingRequestId"] = userRatingRequestId;
    _data["title"] = title;
    _data["copyright"] = copyright;
    _data["releaseYear"] = releaseYear;
    _data["watched"] = watched;
    _data["hasAudioDescription"] = hasAudioDescription;
    _data["synopsis"] = synopsis;
    _data["synopsisRegular"] = synopsisRegular;
    _data["hasSensitiveMetaData"] = hasSensitiveMetaData;
    if(delivery != null) {
      _data["delivery"] = delivery?.toJson();
    }
    if(titleMaturity != null) {
      _data["titleMaturity"] = titleMaturity?.toJson();
    }
    if(broadcaster != null) {
      _data["broadcaster"] = broadcaster?.toJson();
    }
    if(trailerSummary != null) {
      _data["trailerSummary"] = trailerSummary?.toJson();
    }
    _data["supplementalMessage"] = supplementalMessage;
    _data["supplementalMessageIcon"] = supplementalMessageIcon;
    if(videoMerch != null) {
      _data["videoMerch"] = videoMerch?.toJson();
    }
    _data["seasonAbbr"] = seasonAbbr;
    _data["seasonCount"] = seasonCount;
    _data["numSeasonsLabel"] = numSeasonsLabel;
    _data["episodeCount"] = episodeCount;
    _data["episodeTitle"] = episodeTitle;
    if(logoImage != null) {
      _data["logoImage"] = logoImage?.toJson();
    }
    if(backgroundImage != null) {
      _data["backgroundImage"] = backgroundImage?.toJson();
    }
    return _data;
  }
}

class BackgroundImage {
  dynamic videoId;
  dynamic url;
  dynamic width;
  dynamic height;
  dynamic imageKey;

  BackgroundImage({this.videoId, this.url, this.width, this.height, this.imageKey});

  BackgroundImage.fromJson(Map<String, dynamic> json) {
    videoId = json["videoId"];
    url = json["url"];
    width = json["width"];
    height = json["height"];
    imageKey = json["image_key"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["videoId"] = videoId;
    _data["url"] = url;
    _data["width"] = width;
    _data["height"] = height;
    _data["image_key"] = imageKey;
    return _data;
  }
}

class LogoImage {
  dynamic videoId;
  dynamic url;
  dynamic type;
  dynamic width;
  dynamic height;
  dynamic extension;
  dynamic size;
  dynamic imageKey;

  LogoImage({this.videoId, this.url, this.type, this.width, this.height, this.extension, this.size, this.imageKey});

  LogoImage.fromJson(Map<String, dynamic> json) {
    videoId = json["videoId"];
    url = json["url"];
    type = json["type"];
    width = json["width"];
    height = json["height"];
    extension = json["extension"];
    size = json["size"];
    imageKey = json["imageKey"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["videoId"] = videoId;
    _data["url"] = url;
    _data["type"] = type;
    _data["width"] = width;
    _data["height"] = height;
    _data["extension"] = extension;
    _data["size"] = size;
    _data["imageKey"] = imageKey;
    return _data;
  }
}

class VideoMerch {
  dynamic unifiedEntityId;
  dynamic videoId;
  dynamic id;
  dynamic start;
  dynamic computeId;

  VideoMerch({this.unifiedEntityId, this.videoId, this.id, this.start, this.computeId});

  VideoMerch.fromJson(Map<String, dynamic> json) {
    unifiedEntityId = json["unifiedEntityId"];
    videoId = json["videoId"];
    id = json["id"];
    start = json["start"];
    computeId = json["computeId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["unifiedEntityId"] = unifiedEntityId;
    _data["videoId"] = videoId;
    _data["id"] = id;
    _data["start"] = start;
    _data["computeId"] = computeId;
    return _data;
  }
}

class TrailerSummary {
  dynamic length;

  TrailerSummary({this.length});

  TrailerSummary.fromJson(Map<String, dynamic> json) {
    length = json["length"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["length"] = length;
    return _data;
  }
}

class Broadcaster {
  dynamic broadcasterName;

  Broadcaster({this.broadcasterName});

  Broadcaster.fromJson(Map<String, dynamic> json) {
    broadcasterName = json["broadcasterName"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["broadcasterName"] = broadcasterName;
    return _data;
  }
}

class TitleMaturity {
  dynamic level;

  TitleMaturity({this.level});

  TitleMaturity.fromJson(Map<String, dynamic> json) {
    level = json["level"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["level"] = level;
    return _data;
  }
}

class Delivery {
  bool? has3D;
  bool? hasHd;
  bool? hasUltraHd;
  bool? hasHdr;
  bool? hasDolbyVision;
  bool? hasDolbyAtmos;
  bool? has51Audio;
  dynamic quality;
  bool? hasAudioAssistive;
  bool? hasTextClosedCaptions;
  bool? hasAudioSpatial;

  Delivery({this.has3D, this.hasHd, this.hasUltraHd, this.hasHdr, this.hasDolbyVision, this.hasDolbyAtmos, this.has51Audio, this.quality, this.hasAudioAssistive, this.hasTextClosedCaptions, this.hasAudioSpatial});

  Delivery.fromJson(Map<String, dynamic> json) {
    has3D = json["has3D"];
    hasHd = json["hasHD"];
    hasUltraHd = json["hasUltraHD"];
    hasHdr = json["hasHDR"];
    hasDolbyVision = json["hasDolbyVision"];
    hasDolbyAtmos = json["hasDolbyAtmos"];
    has51Audio = json["has51Audio"];
    quality = json["quality"];
    hasAudioAssistive = json["hasAudioAssistive"];
    hasTextClosedCaptions = json["hasTextClosedCaptions"];
    hasAudioSpatial = json["hasAudioSpatial"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["has3D"] = has3D;
    _data["hasHD"] = hasHd;
    _data["hasUltraHD"] = hasUltraHd;
    _data["hasHDR"] = hasHdr;
    _data["hasDolbyVision"] = hasDolbyVision;
    _data["hasDolbyAtmos"] = hasDolbyAtmos;
    _data["has51Audio"] = has51Audio;
    _data["quality"] = quality;
    _data["hasAudioAssistive"] = hasAudioAssistive;
    _data["hasTextClosedCaptions"] = hasTextClosedCaptions;
    _data["hasAudioSpatial"] = hasAudioSpatial;
    return _data;
  }
}

class LiveEvent1 {
  LiveEvent1();

  LiveEvent1.fromJson(Map<String, dynamic> json) {

  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};

    return _data;
  }
}

class Maturity {
  Rating? rating;

  Maturity({this.rating});

  Maturity.fromJson(Map<String, dynamic> json) {
    rating = json["rating"] == null ? null : Rating.fromJson(json["rating"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    if(rating != null) {
      _data["rating"] = rating?.toJson();
    }
    return _data;
  }
}

class Rating {
  dynamic value;
  dynamic maturityDescription;
  dynamic specificRatingReason;
  dynamic maturityLevel;
  dynamic board;
  dynamic boardId;
  dynamic ratingId;
  List<Reasons>? reasons;

  Rating({this.value, this.maturityDescription, this.specificRatingReason, this.maturityLevel, this.board, this.boardId, this.ratingId, this.reasons});

  Rating.fromJson(Map<String, dynamic> json) {
    value = json["value"];
    maturityDescription = json["maturityDescription"];
    specificRatingReason = json["specificRatingReason"];
    maturityLevel = json["maturityLevel"];
    board = json["board"];
    boardId = json["boardId"];
    ratingId = json["ratingId"];
    reasons = json["reasons"] == null ? null : (json["reasons"] as List).map((e) => Reasons.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["value"] = value;
    _data["maturityDescription"] = maturityDescription;
    _data["specificRatingReason"] = specificRatingReason;
    _data["maturityLevel"] = maturityLevel;
    _data["board"] = board;
    _data["boardId"] = boardId;
    _data["ratingId"] = ratingId;
    if(reasons != null) {
      _data["reasons"] = reasons?.map((e) => e.toJson()).toList();
    }
    return _data;
  }
}

class Reasons {
  dynamic id;
  dynamic levelDescription;
  dynamic reasonDescription;

  Reasons({this.id, this.levelDescription, this.reasonDescription});

  Reasons.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    levelDescription = json["levelDescription"];
    reasonDescription = json["reasonDescription"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["levelDescription"] = levelDescription;
    _data["reasonDescription"] = reasonDescription;
    return _data;
  }
}

class CurrentContextualSynopsis {
  dynamic text;
  dynamic evidenceKey;

  CurrentContextualSynopsis({this.text, this.evidenceKey});

  CurrentContextualSynopsis.fromJson(Map<String, dynamic> json) {
    text = json["text"];
    evidenceKey = json["evidenceKey"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["evidenceKey"] = evidenceKey;
    return _data;
  }
}

class ContextualSynopsis {
  dynamic text;
  dynamic evidenceKey;

  ContextualSynopsis({this.text, this.evidenceKey});

  ContextualSynopsis.fromJson(Map<String, dynamic> json) {
    text = json["text"];
    evidenceKey = json["evidenceKey"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["text"] = text;
    _data["evidenceKey"] = evidenceKey;
    return _data;
  }
}

class Availability1 {
  bool? isPlayable;
  dynamic availabilityDate;
  dynamic availabilityStartTime;
  dynamic unplayableCause;

  Availability1({this.isPlayable, this.availabilityDate, this.availabilityStartTime, this.unplayableCause});

  Availability1.fromJson(Map<String, dynamic> json) {
    isPlayable = json["isPlayable"];
    availabilityDate = json["availabilityDate"];
    availabilityStartTime = json["availabilityStartTime"];
    unplayableCause = json["unplayableCause"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isPlayable"] = isPlayable;
    _data["availabilityDate"] = availabilityDate;
    _data["availabilityStartTime"] = availabilityStartTime;
    _data["unplayableCause"] = unplayableCause;
    return _data;
  }
}

class Genres {
  dynamic id;
  dynamic name;

  Genres({this.id, this.name});

  Genres.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Creators {
  dynamic id;
  dynamic name;

  Creators({this.id, this.name});

  Creators.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Cast {
  dynamic id;
  dynamic name;

  Cast({this.id, this.name});

  Cast.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class Tags {
  int? id;
  dynamic name;

  Tags({this.id, this.name});

  Tags.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    name = json["name"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["name"] = name;
    return _data;
  }
}

class TrackIds {
  dynamic videoId;
  dynamic trackIdJaw;
  dynamic trackIdJawEpisode;
  dynamic trackIdJawTrailer;
  dynamic trackId;

  TrackIds({this.videoId, this.trackIdJaw, this.trackIdJawEpisode, this.trackIdJawTrailer, this.trackId});

  TrackIds.fromJson(Map<String, dynamic> json) {
    videoId = json["videoId"];
    trackIdJaw = json["trackId_jaw"];
    trackIdJawEpisode = json["trackId_jawEpisode"];
    trackIdJawTrailer = json["trackId_jawTrailer"];
    trackId = json["trackId"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["videoId"] = videoId;
    _data["trackId_jaw"] = trackIdJaw;
    _data["trackId_jawEpisode"] = trackIdJawEpisode;
    _data["trackId_jawTrailer"] = trackIdJawTrailer;
    _data["trackId"] = trackId;
    return _data;
  }
}

class Summary {
  dynamic type;
  dynamic unifiedEntityId;
  dynamic id;
  bool? isOriginal;
  LiveEvent? liveEvent;

  Summary({this.type, this.unifiedEntityId, this.id, this.isOriginal, this.liveEvent});

  Summary.fromJson(Map<String, dynamic> json) {
    type = json["type"];
    unifiedEntityId = json["unifiedEntityId"];
    id = json["id"];
    isOriginal = json["isOriginal"];
    liveEvent = json["liveEvent"] == null ? null : LiveEvent.fromJson(json["liveEvent"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["type"] = type;
    _data["unifiedEntityId"] = unifiedEntityId;
    _data["id"] = id;
    _data["isOriginal"] = isOriginal;
    if(liveEvent != null) {
      _data["liveEvent"] = liveEvent?.toJson();
    }
    return _data;
  }
}

class LiveEvent {
  bool? hasLiveEvent;

  LiveEvent({this.hasLiveEvent});

  LiveEvent.fromJson(Map<String, dynamic> json) {
    hasLiveEvent = json["hasLiveEvent"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["hasLiveEvent"] = hasLiveEvent;
    return _data;
  }
}

class Queue {
  bool? available;
  bool? inQueue;

  Queue({this.available, this.inQueue});

  Queue.fromJson(Map<String, dynamic> json) {
    available = json["available"];
    inQueue = json["inQueue"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["available"] = available;
    _data["inQueue"] = inQueue;
    return _data;
  }
}

class Availability {
  bool? isPlayable;
  dynamic availabilityDate;
  dynamic availabilityStartTime;
  dynamic unplayableCause;

  Availability({this.isPlayable, this.availabilityDate, this.availabilityStartTime, this.unplayableCause});

  Availability.fromJson(Map<String, dynamic> json) {
    isPlayable = json["isPlayable"];
    availabilityDate = json["availabilityDate"];
    availabilityStartTime = json["availabilityStartTime"];
    unplayableCause = json["unplayableCause"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["isPlayable"] = isPlayable;
    _data["availabilityDate"] = availabilityDate;
    _data["availabilityStartTime"] = availabilityStartTime;
    _data["unplayableCause"] = unplayableCause;
    return _data;
  }
}