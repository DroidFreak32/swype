.class public final Lcom/google/api/client/util/DateTime;
.super Ljava/lang/Object;
.source "DateTime.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field private static final RFC3339_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final dateOnly:Z

.field private final tzShift:I

.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    .line 44
    const-string/jumbo v0, "^(\\d{4})-(\\d{2})-(\\d{2})([Tt](\\d{2}):(\\d{2}):(\\d{2})(\\.\\d+)?)?([Zz]|([+-])(\\d{2}):(\\d{2}))?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/DateTime;->RFC3339_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 86
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    .line 87
    return-void
.end method

.method private constructor <init>(ZJLjava/lang/Integer;)V
    .locals 2
    .param p1, "dateOnly"    # Z
    .param p2, "value"    # J
    .param p4, "tzShift"    # Ljava/lang/Integer;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-boolean p1, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    .line 125
    iput-wide p2, p0, Lcom/google/api/client/util/DateTime;->value:J

    .line 126
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 128
    return-void

    .line 126
    :cond_0
    if-nez p4, :cond_1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method private static appendInt(Ljava/lang/StringBuilder;II)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "num"    # I
    .param p2, "numDigits"    # I

    .prologue
    .line 345
    if-gez p1, :cond_0

    .line 346
    const/16 v2, 0x2d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 347
    neg-int p1, p1

    .line 349
    :cond_0
    move v1, p1

    .line 350
    .local v1, "x":I
    :goto_0
    if-lez v1, :cond_1

    .line 351
    div-int/lit8 v1, v1, 0xa

    .line 352
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_2

    .line 355
    const/16 v2, 0x30

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 357
    :cond_2
    if-eqz p1, :cond_3

    .line 358
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 360
    :cond_3
    return-void
.end method

.method public static parseRfc3339(Ljava/lang/String;)Lcom/google/api/client/util/DateTime;
    .locals 30
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 288
    sget-object v21, Lcom/google/api/client/util/DateTime;->RFC3339_PATTERN:Ljava/util/regex/Pattern;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v16

    .line 289
    .local v16, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual/range {v16 .. v16}, Ljava/util/regex/Matcher;->matches()Z

    move-result v21

    if-nez v21, :cond_0

    .line 290
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "Invalid date/time format: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 293
    :cond_0
    const/16 v21, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 294
    .local v7, "year":I
    const/16 v21, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v8, v21, -0x1

    .line 295
    .local v8, "month":I
    const/16 v21, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 296
    .local v9, "day":I
    const/16 v21, 0x4

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_1

    const/4 v14, 0x1

    .line 297
    .local v14, "isTimeGiven":Z
    :goto_0
    const/16 v21, 0x9

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v20

    .line 298
    .local v20, "tzShiftRegexGroup":Ljava/lang/String;
    if-eqz v20, :cond_2

    const/4 v15, 0x1

    .line 299
    .local v15, "isTzShiftGiven":Z
    :goto_1
    const/4 v10, 0x0

    .line 300
    .local v10, "hourOfDay":I
    const/4 v11, 0x0

    .line 301
    .local v11, "minute":I
    const/4 v12, 0x0

    .line 302
    .local v12, "second":I
    const/16 v17, 0x0

    .line 303
    .local v17, "milliseconds":I
    const/16 v19, 0x0

    .line 305
    .local v19, "tzShiftInteger":Ljava/lang/Integer;
    if-eqz v15, :cond_3

    if-nez v14, :cond_3

    .line 306
    new-instance v21, Ljava/lang/NumberFormatException;

    new-instance v24, Ljava/lang/StringBuilder;

    const-string/jumbo v25, "Invalid date/time format, cannot specify time zone shift without specifying time: "

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 296
    .end local v10    # "hourOfDay":I
    .end local v11    # "minute":I
    .end local v12    # "second":I
    .end local v14    # "isTimeGiven":Z
    .end local v15    # "isTzShiftGiven":Z
    .end local v17    # "milliseconds":I
    .end local v19    # "tzShiftInteger":Ljava/lang/Integer;
    .end local v20    # "tzShiftRegexGroup":Ljava/lang/String;
    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 298
    .restart local v14    # "isTimeGiven":Z
    .restart local v20    # "tzShiftRegexGroup":Ljava/lang/String;
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 310
    .restart local v10    # "hourOfDay":I
    .restart local v11    # "minute":I
    .restart local v12    # "second":I
    .restart local v15    # "isTzShiftGiven":Z
    .restart local v17    # "milliseconds":I
    .restart local v19    # "tzShiftInteger":Ljava/lang/Integer;
    :cond_3
    if-eqz v14, :cond_4

    .line 311
    const/16 v21, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 312
    const/16 v21, 0x6

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 313
    const/16 v21, 0x7

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 314
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    if-eqz v21, :cond_4

    .line 315
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 317
    const/16 v21, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int/lit8 v13, v21, -0x3

    .line 318
    .local v13, "fractionDigits":I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4024000000000000L    # 10.0

    int-to-double v0, v13

    move-wide/from16 v28, v0

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    div-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v17, v0

    .line 321
    .end local v13    # "fractionDigits":I
    :cond_4
    new-instance v6, Ljava/util/GregorianCalendar;

    sget-object v21, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 322
    .local v6, "dateTime":Ljava/util/Calendar;
    invoke-virtual/range {v6 .. v12}, Ljava/util/Calendar;->set(IIIIII)V

    .line 323
    const/16 v21, 0xe

    move/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 324
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 326
    .local v22, "value":J
    if-eqz v14, :cond_5

    if-eqz v15, :cond_5

    .line 328
    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->charAt(I)C

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v21

    const/16 v24, 0x5a

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 329
    const/16 v18, 0x0

    .line 338
    .local v18, "tzShift":I
    :goto_2
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    .line 340
    .end local v18    # "tzShift":I
    :cond_5
    new-instance v24, Lcom/google/api/client/util/DateTime;

    if-nez v14, :cond_8

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, v24

    move/from16 v1, v21

    move-wide/from16 v2, v22

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/api/client/util/DateTime;-><init>(ZJLjava/lang/Integer;)V

    return-object v24

    .line 331
    :cond_6
    const/16 v21, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    mul-int/lit8 v21, v21, 0x3c

    const/16 v24, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    add-int v18, v21, v24

    .line 333
    .restart local v18    # "tzShift":I
    const/16 v21, 0xa

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v21

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    const/16 v24, 0x2d

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 334
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v18, v0

    .line 336
    :cond_7
    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide/32 v26, 0xea60

    mul-long v24, v24, v26

    sub-long v22, v22, v24

    goto :goto_2

    .line 340
    .end local v18    # "tzShift":I
    :cond_8
    const/16 v21, 0x0

    goto :goto_3
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 250
    if-ne p1, p0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v1

    .line 253
    :cond_1
    instance-of v3, p1, Lcom/google/api/client/util/DateTime;

    if-nez v3, :cond_2

    move v1, v2

    .line 254
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 256
    check-cast v0, Lcom/google/api/client/util/DateTime;

    .line 257
    .local v0, "other":Lcom/google/api/client/util/DateTime;
    iget-boolean v3, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    iget-boolean v4, v0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-ne v3, v4, :cond_3

    iget-wide v4, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget-wide v6, v0, Lcom/google/api/client/util/DateTime;->value:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    iget v4, v0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-eq v3, v4, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .line 262
    const/4 v0, 0x3

    new-array v2, v0, [J

    const/4 v0, 0x0

    iget-wide v4, p0, Lcom/google/api/client/util/DateTime;->value:J

    aput-wide v4, v2, v0

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    aput-wide v0, v2, v3

    const/4 v0, 0x2

    iget v1, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v4, v1

    aput-wide v4, v2, v0

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    return v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/google/api/client/util/DateTime;->toStringRfc3339()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toStringRfc3339()Ljava/lang/String;
    .locals 14

    .prologue
    .line 190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v4, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/GregorianCalendar;

    sget-object v7, Lcom/google/api/client/util/DateTime;->GMT:Ljava/util/TimeZone;

    invoke-direct {v1, v7}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 192
    .local v1, "dateTime":Ljava/util/Calendar;
    iget-wide v8, p0, Lcom/google/api/client/util/DateTime;->value:J

    iget v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    int-to-long v10, v7

    const-wide/32 v12, 0xea60

    mul-long/2addr v10, v12

    add-long v2, v8, v10

    .line 193
    .local v2, "localTime":J
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 195
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 196
    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 198
    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 200
    iget-boolean v7, p0, Lcom/google/api/client/util/DateTime;->dateOnly:Z

    if-nez v7, :cond_1

    .line 202
    const/16 v7, 0x54

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 203
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 204
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    const/16 v7, 0xc

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 206
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 207
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 209
    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 210
    const/16 v7, 0x2e

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 211
    const/16 v7, 0xe

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x3

    invoke-static {v4, v7, v8}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 214
    :cond_0
    iget v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-nez v7, :cond_2

    .line 215
    const/16 v7, 0x5a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 217
    :cond_2
    iget v0, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    .line 218
    .local v0, "absTzShift":I
    iget v7, p0, Lcom/google/api/client/util/DateTime;->tzShift:I

    if-lez v7, :cond_3

    .line 219
    const/16 v7, 0x2b

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    :goto_1
    div-int/lit8 v5, v0, 0x3c

    .line 226
    .local v5, "tzHours":I
    rem-int/lit8 v6, v0, 0x3c

    .line 227
    .local v6, "tzMinutes":I
    const/4 v7, 0x2

    invoke-static {v4, v5, v7}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    .line 228
    const/16 v7, 0x3a

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    const/4 v7, 0x2

    invoke-static {v4, v6, v7}, Lcom/google/api/client/util/DateTime;->appendInt(Ljava/lang/StringBuilder;II)V

    goto :goto_0

    .line 221
    .end local v5    # "tzHours":I
    .end local v6    # "tzMinutes":I
    :cond_3
    const/16 v7, 0x2d

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 222
    neg-int v0, v0

    goto :goto_1
.end method
