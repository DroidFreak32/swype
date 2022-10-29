.class public final Lcom/google/api/client/http/HttpMediaType;
.super Ljava/lang/Object;
.source "HttpMediaType.java"


# static fields
.field private static final FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

.field private static final PARAMETER_REGEX:Ljava/util/regex/Pattern;

.field private static final TOKEN_REGEX:Ljava/util/regex/Pattern;

.field private static final TYPE_REGEX:Ljava/util/regex/Pattern;


# instance fields
.field private cachedBuildResult:Ljava/lang/String;

.field private final parameters:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private subType:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    .line 69
    const-string/jumbo v5, "[\\w!#$&.+\\-\\^_]+|[*]"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    .line 73
    const-string/jumbo v5, "[\\p{ASCII}&&[^\\p{Cntrl} ;/=\\[\\]\\(\\)\\<\\>\\@\\,\\:\\\"\\?\\=]]+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    .line 79
    const-string/jumbo v2, "[^\\s/=;\"]+"

    .line 80
    .local v2, "typeOrKey":Ljava/lang/String;
    const-string/jumbo v4, ";.*"

    .line 81
    .local v4, "wholeParameterSection":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\\s*("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")/("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")\\s*("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    invoke-static {v5, v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

    .line 88
    const-string/jumbo v1, "\"([^\"]*)\""

    .line 89
    .local v1, "quotedParameterValue":Ljava/lang/String;
    const-string/jumbo v3, "[^\\s;\"]*"

    .line 90
    .local v3, "unquotedParameterValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "parameterValue":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\\s*;\\s*("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    sput-object v5, Lcom/google/api/client/http/HttpMediaType;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "mediaType"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "application"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "octet-stream"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    .line 111
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->fromString(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "subType"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const-string/jumbo v0, "application"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "octet-stream"

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    .line 101
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 102
    invoke-virtual {p0, p2}, Lcom/google/api/client/http/HttpMediaType;->setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 103
    return-void
.end method

.method public static equalsIgnoreParameters(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "mediaTypeA"    # Ljava/lang/String;
    .param p1, "mediaTypeB"    # Ljava/lang/String;

    .prologue
    .line 302
    if-nez p0, :cond_4

    if-eqz p1, :cond_18

    :cond_4
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    new-instance v0, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v0, p0}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/api/client/http/HttpMediaType;

    invoke-direct {v1, p1}, Lcom/google/api/client/http/HttpMediaType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private fromString(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .registers 11
    .param p1, "combinedType"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 166
    sget-object v4, Lcom/google/api/client/http/HttpMediaType;->FULL_MEDIA_TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 167
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    const-string/jumbo v5, "Type must be in the \'maintype/subtype; parameter=value\' format"

    invoke-static {v4, v5}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 170
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/http/HttpMediaType;->setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 171
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/api/client/http/HttpMediaType;->setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 172
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 173
    .local v2, "params":Ljava/lang/String;
    if-eqz v2, :cond_45

    .line 174
    sget-object v4, Lcom/google/api/client/http/HttpMediaType;->PARAMETER_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 175
    :goto_2d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 177
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "value":Ljava/lang/String;
    if-nez v3, :cond_41

    .line 180
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 182
    :cond_41
    invoke-virtual {p0, v0, v3}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    goto :goto_2d

    .line 185
    .end local v0    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    :cond_45
    return-object p0
.end method

.method static matchesToken(Ljava/lang/String;)Z
    .registers 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 248
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method

.method private static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "unquotedString"    # Ljava/lang/String;

    .prologue
    .line 252
    const-string/jumbo v1, "\\"

    const-string/jumbo v2, "\\\\"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 253
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "escapedString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public final build()Ljava/lang/String;
    .registers 6

    .prologue
    .line 261
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 262
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 279
    :goto_6
    return-object v4

    .line 265
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/16 v4, 0x2f

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 268
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    if-eqz v4, :cond_5e

    .line 270
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v4}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 271
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 272
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "; "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const-string/jumbo v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-static {v3}, Lcom/google/api/client/http/HttpMediaType;->matchesToken(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5a

    invoke-static {v3}, Lcom/google/api/client/http/HttpMediaType;->quoteString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "value":Ljava/lang/String;
    :cond_5a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 278
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_5e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 279
    iget-object v4, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    goto :goto_6
.end method

.method public final clearParameters()V
    .registers 2

    .prologue
    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 233
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 331
    instance-of v2, p1, Lcom/google/api/client/http/HttpMediaType;

    if-nez v2, :cond_6

    .line 337
    :cond_5
    :goto_5
    return v1

    :cond_6
    move-object v0, p1

    .line 335
    check-cast v0, Lcom/google/api/client/http/HttpMediaType;

    .line 337
    .local v0, "otherType":Lcom/google/api/client/http/HttpMediaType;
    invoke-virtual {p0, v0}, Lcom/google/api/client/http/HttpMediaType;->equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    iget-object v3, v0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method

.method public final equalsIgnoreParameters(Lcom/google/api/client/http/HttpMediaType;)Z
    .registers 4
    .param p1, "mediaType"    # Lcom/google/api/client/http/HttpMediaType;

    .prologue
    .line 292
    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpMediaType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->getSubType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/api/client/http/HttpMediaType;->getSubType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final getCharsetParameter()Ljava/nio/charset/Charset;
    .registers 3

    .prologue
    .line 320
    const-string/jumbo v1, "charset"

    invoke-virtual {p0, v1}, Lcom/google/api/client/http/HttpMediaType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_b

    const/4 v1, 0x0

    :goto_a
    return-object v1

    :cond_b
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    goto :goto_a
.end method

.method public final getParameter(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final getParameters()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getSubType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final removeParameter(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 223
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    return-object p0
.end method

.method public final setCharsetParameter(Ljava/nio/charset/Charset;)Lcom/google/api/client/http/HttpMediaType;
    .registers 4
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 312
    const-string/jumbo v1, "charset"

    if-nez p1, :cond_a

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {p0, v1, v0}, Lcom/google/api/client/http/HttpMediaType;->setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 313
    return-object p0

    .line 312
    :cond_a
    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 195
    if-nez p2, :cond_6

    .line 196
    invoke-virtual {p0, p1}, Lcom/google/api/client/http/HttpMediaType;->removeParameter(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;

    .line 204
    :goto_5
    return-object p0

    .line 200
    :cond_6
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TOKEN_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string/jumbo v1, "Name contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->parameters:Ljava/util/SortedMap;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method public final setSubType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .registers 4
    .param p1, "subType"    # Ljava/lang/String;

    .prologue
    .line 140
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string/jumbo v1, "Subtype contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 142
    iput-object p1, p0, Lcom/google/api/client/http/HttpMediaType;->subType:Ljava/lang/String;

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public final setType(Ljava/lang/String;)Lcom/google/api/client/http/HttpMediaType;
    .registers 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    sget-object v0, Lcom/google/api/client/http/HttpMediaType;->TYPE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string/jumbo v1, "Type contains reserved characters"

    invoke-static {v0, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    iput-object p1, p0, Lcom/google/api/client/http/HttpMediaType;->type:Ljava/lang/String;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/api/client/http/HttpMediaType;->cachedBuildResult:Ljava/lang/String;

    .line 124
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/google/api/client/http/HttpMediaType;->build()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
