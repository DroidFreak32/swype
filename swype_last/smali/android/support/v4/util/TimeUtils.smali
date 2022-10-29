.class public final Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .registers 7
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 169
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_d

    .line 170
    const-string/jumbo v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_c
    return-void

    .line 173
    :cond_d
    sub-long v0, p0, p2

    invoke-static {v0, v1, p4}, Landroid/support/v4/util/TimeUtils;->formatDuration$112769eb(JLjava/io/PrintWriter;)V

    goto :goto_c
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .registers 3
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 164
    invoke-static {p0, p1, p2}, Landroid/support/v4/util/TimeUtils;->formatDuration$112769eb(JLjava/io/PrintWriter;)V

    .line 165
    return-void
.end method

.method private static formatDuration$112769eb(JLjava/io/PrintWriter;)V
    .registers 15
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    const v4, 0x15180

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 156
    sget-object v8, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v8

    .line 1076
    :try_start_8
    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v2, v2

    if-gez v2, :cond_12

    .line 1077
    const/4 v2, 0x0

    new-array v2, v2, [C

    sput-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 1080
    :cond_12
    sget-object v9, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 1082
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-nez v2, :cond_2c

    .line 1088
    const/4 v1, 0x0

    const/16 v2, 0x30

    aput-char v2, v9, v1

    .line 158
    .end local p0    # "duration":J
    .local v0, "len":I
    :goto_1f
    new-instance v1, Ljava/lang/String;

    sget-object v2, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    monitor-exit v8

    return-void

    .line 1093
    .end local v0    # "len":I
    .restart local p0    # "duration":J
    :cond_2c
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_96

    .line 1094
    const/16 v2, 0x2b

    move v7, v2

    .line 1100
    .end local p0    # "duration":J
    :goto_35
    const-wide/16 v2, 0x3e8

    rem-long v2, p0, v2

    long-to-int v10, v2

    .line 1101
    const-wide/16 v2, 0x3e8

    div-long v2, p0, v2

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 1104
    if-le v3, v4, :cond_a9

    .line 1105
    const v2, 0x15180

    div-int v2, v3, v2

    .line 1106
    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    move v6, v2

    .line 1108
    :goto_4e
    const/16 v2, 0xe10

    if-le v3, v2, :cond_a7

    .line 1109
    div-int/lit16 v2, v3, 0xe10

    .line 1110
    mul-int/lit16 v4, v2, 0xe10

    sub-int/2addr v3, v4

    move v5, v2

    .line 1112
    :goto_58
    const/16 v2, 0x3c

    if-le v3, v2, :cond_a4

    .line 1113
    div-int/lit8 v2, v3, 0x3c

    .line 1114
    mul-int/lit8 v4, v2, 0x3c

    sub-int/2addr v3, v4

    move v4, v3

    move v3, v2

    .line 1132
    :goto_63
    const/4 v2, 0x0

    aput-char v7, v9, v2

    .line 1137
    const/16 v2, 0x64

    const/4 v7, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v6, v2, v7, v11}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v6

    .line 1138
    const/16 v7, 0x68

    if-eq v6, v0, :cond_9b

    move v2, v0

    :goto_73
    invoke-static {v9, v5, v7, v6, v2}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v5

    .line 1139
    const/16 v6, 0x6d

    if-eq v5, v0, :cond_9d

    move v2, v0

    :goto_7c
    invoke-static {v9, v3, v6, v5, v2}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v2

    .line 1140
    const/16 v3, 0x73

    if-eq v2, v0, :cond_9f

    :goto_84
    invoke-static {v9, v4, v3, v2, v0}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v1

    .line 1141
    const/16 v2, 0x6d

    const/4 v3, 0x1

    invoke-static {v9, v10, v2, v1, v3}, Landroid/support/v4/util/TimeUtils;->printField$6419d3d2([CICIZ)I

    move-result v1

    .line 1142
    const/16 v2, 0x73

    aput-char v2, v9, v1

    .line 1143
    add-int/lit8 v0, v1, 0x1

    goto :goto_1f

    .line 1096
    .restart local p0    # "duration":J
    :cond_96
    const/16 v2, 0x2d

    .line 1097
    neg-long p0, p0

    move v7, v2

    goto :goto_35

    .end local p0    # "duration":J
    :cond_9b
    move v2, v1

    .line 1138
    goto :goto_73

    :cond_9d
    move v2, v1

    .line 1139
    goto :goto_7c

    :cond_9f
    move v0, v1

    .line 1140
    goto :goto_84

    .line 159
    :catchall_a1
    move-exception v1

    monitor-exit v8
    :try_end_a3
    .catchall {:try_start_8 .. :try_end_a3} :catchall_a1

    throw v1

    :cond_a4
    move v4, v3

    move v3, v1

    goto :goto_63

    :cond_a7
    move v5, v1

    goto :goto_58

    :cond_a9
    move v6, v1

    goto :goto_4e
.end method

.method private static printField$6419d3d2([CICIZ)I
    .registers 8
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z

    .prologue
    .line 53
    if-nez p4, :cond_4

    if-lez p1, :cond_32

    .line 54
    :cond_4
    move v1, p3

    .line 55
    .local v1, "startPos":I
    const/16 v2, 0x63

    if-le p1, v2, :cond_15

    .line 56
    div-int/lit8 v0, p1, 0x64

    .line 57
    .local v0, "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 58
    add-int/lit8 p3, p3, 0x1

    .line 59
    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .line 61
    .end local v0    # "dig":I
    :cond_15
    const/16 v2, 0x9

    if-gt p1, v2, :cond_1b

    if-eq v1, p3, :cond_27

    .line 62
    :cond_1b
    div-int/lit8 v0, p1, 0xa

    .line 63
    .restart local v0    # "dig":I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .line 67
    .end local v0    # "dig":I
    :cond_27
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 68
    add-int/lit8 p3, p3, 0x1

    .line 69
    aput-char p2, p0, p3

    .line 70
    add-int/lit8 p3, p3, 0x1

    .line 72
    .end local v1    # "startPos":I
    :cond_32
    return p3
.end method
