.class public Lcom/flurry/sdk/je;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/je$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/flurry/sdk/je;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/flurry/sdk/jm;",
            "[B>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/flurry/sdk/ka;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ka",
            "<",
            "Lcom/flurry/sdk/le;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/flurry/sdk/je$a;

.field private g:Lcom/flurry/sdk/jo;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 36
    const-class v0, Lcom/flurry/sdk/je;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1401
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1402
    const-string/jumbo v1, "null"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1403
    const-string/jumbo v1, "9774d56d682e549c"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1404
    const-string/jumbo v1, "dead00beef"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1405
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/flurry/sdk/je;->d:Ljava/util/Set;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    .line 69
    new-instance v0, Lcom/flurry/sdk/je$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/je$1;-><init>(Lcom/flurry/sdk/je;)V

    iput-object v0, p0, Lcom/flurry/sdk/je;->e:Lcom/flurry/sdk/ka;

    .line 88
    sget-object v0, Lcom/flurry/sdk/je$a;->a:Lcom/flurry/sdk/je$a;

    iput-object v0, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    .line 93
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v0

    const-string/jumbo v1, "com.flurry.android.sdk.FlurrySessionEvent"

    iget-object v2, p0, Lcom/flurry/sdk/je;->e:Lcom/flurry/sdk/ka;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/kb;->a(Ljava/lang/String;Lcom/flurry/sdk/ka;)V

    .line 94
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    new-instance v1, Lcom/flurry/sdk/je$2;

    invoke-direct {v1, p0}, Lcom/flurry/sdk/je$2;-><init>(Lcom/flurry/sdk/je;)V

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/jr;->b(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/je;
    .registers 2

    .prologue
    .line 41
    const-class v1, Lcom/flurry/sdk/je;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/flurry/sdk/je;->c:Lcom/flurry/sdk/je;

    if-nez v0, :cond_e

    .line 42
    new-instance v0, Lcom/flurry/sdk/je;

    invoke-direct {v0}, Lcom/flurry/sdk/je;-><init>()V

    sput-object v0, Lcom/flurry/sdk/je;->c:Lcom/flurry/sdk/je;

    .line 44
    :cond_e
    sget-object v0, Lcom/flurry/sdk/je;->c:Lcom/flurry/sdk/je;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 41
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/flurry/sdk/je;)V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/flurry/sdk/je;->e()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)V
    .registers 7

    .prologue
    .line 298
    const/4 v2, 0x0

    .line 300
    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_b} :catch_16
    .catchall {:try_start_1 .. :try_end_b} :catchall_25

    .line 4367
    const/4 v0, 0x1

    :try_start_c
    invoke-interface {v1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 4368
    invoke-interface {v1, p0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_12} :catch_2d
    .catchall {:try_start_c .. :try_end_12} :catchall_2b

    .line 305
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    .line 306
    :goto_15
    return-void

    .line 302
    :catch_16
    move-exception v0

    move-object v1, v2

    .line 303
    :goto_18
    const/4 v2, 0x6

    :try_start_19
    sget-object v3, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    const-string/jumbo v4, "Error when saving deviceId"

    invoke-static {v2, v3, v4, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_2b

    .line 305
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_15

    :catchall_25
    move-exception v0

    move-object v1, v2

    :goto_27
    invoke-static {v1}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_2b
    move-exception v0

    goto :goto_27

    .line 302
    :catch_2d
    move-exception v0

    goto :goto_18
.end method

.method static synthetic b(Lcom/flurry/sdk/je;)V
    .registers 11

    .prologue
    const-wide/16 v8, 0x25

    const/4 v1, 0x0

    .line 10132
    :goto_3
    sget-object v0, Lcom/flurry/sdk/je$a;->e:Lcom/flurry/sdk/je$a;

    iget-object v2, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    invoke-virtual {v0, v2}, Lcom/flurry/sdk/je$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11b

    .line 10134
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    iget-object v2, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_128

    .line 10158
    :goto_1a
    :try_start_1a
    sget-object v0, Lcom/flurry/sdk/je$4;->b:[I

    iget-object v2, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    invoke-virtual {v2}, Lcom/flurry/sdk/je$a;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_134

    goto :goto_3

    .line 10160
    :pswitch_28
    invoke-direct {p0}, Lcom/flurry/sdk/je;->e()V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2b} :catch_2c

    goto :goto_3

    .line 10175
    :catch_2c
    move-exception v0

    .line 10176
    const/4 v2, 0x4

    sget-object v3, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Exception during id fetch:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 10136
    :pswitch_51
    sget-object v0, Lcom/flurry/sdk/je$a;->b:Lcom/flurry/sdk/je$a;

    iput-object v0, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    goto :goto_1a

    .line 10140
    :pswitch_56
    sget-object v0, Lcom/flurry/sdk/je$a;->c:Lcom/flurry/sdk/je$a;

    iput-object v0, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    goto :goto_1a

    .line 10144
    :pswitch_5b
    sget-object v0, Lcom/flurry/sdk/je$a;->d:Lcom/flurry/sdk/je$a;

    iput-object v0, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    goto :goto_1a

    .line 10148
    :pswitch_60
    sget-object v0, Lcom/flurry/sdk/je$a;->e:Lcom/flurry/sdk/je$a;

    iput-object v0, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    goto :goto_1a

    .line 10221
    :pswitch_65
    :try_start_65
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 10244
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 11097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 10244
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11266
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8d

    move v0, v1

    .line 10245
    :goto_80
    if-nez v0, :cond_9f

    .line 10246
    const/4 v0, 0x0

    .line 10236
    :goto_83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 10223
    :cond_89
    :goto_89
    iput-object v0, p0, Lcom/flurry/sdk/je;->h:Ljava/lang/String;

    goto/16 :goto_3

    .line 11270
    :cond_8d
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 11397
    iget-object v3, p0, Lcom/flurry/sdk/je;->d:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 11270
    if-eqz v0, :cond_9d

    move v0, v1

    .line 11271
    goto :goto_80

    .line 11274
    :cond_9d
    const/4 v0, 0x1

    goto :goto_80

    .line 10249
    :cond_9f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "AND"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 12253
    :cond_b0
    invoke-static {}, Lcom/flurry/sdk/je;->f()Ljava/lang/String;

    move-result-object v0

    .line 12254
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_89

    .line 12256
    invoke-direct {p0}, Lcom/flurry/sdk/je;->g()Ljava/lang/String;

    move-result-object v0

    .line 12257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f8

    .line 12278
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 12279
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 13097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 12279
    invoke-static {v0}, Lcom/flurry/sdk/lo;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/flurry/sdk/lr;->i(Ljava/lang/String;)J

    move-result-wide v6

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 12280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ID"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v2, v3, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 13284
    :cond_f8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 13288
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 14097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 14393
    const-string/jumbo v3, ".flurryb."

    .line 13288
    invoke-virtual {v2, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 13290
    invoke-static {v2}, Lcom/flurry/sdk/lq;->a(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_89

    .line 13294
    invoke-static {v0, v2}, Lcom/flurry/sdk/je;->a(Ljava/lang/String;Ljava/io/File;)V

    goto/16 :goto_89

    .line 10168
    :pswitch_116
    invoke-direct {p0}, Lcom/flurry/sdk/je;->h()V
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_119} :catch_2c

    goto/16 :goto_3

    .line 10181
    :cond_11b
    new-instance v0, Lcom/flurry/sdk/jf;

    invoke-direct {v0}, Lcom/flurry/sdk/jf;-><init>()V

    .line 10182
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V

    .line 35
    return-void

    .line 10134
    :pswitch_data_128
    .packed-switch 0x1
        :pswitch_51
        :pswitch_56
        :pswitch_5b
        :pswitch_60
    .end packed-switch

    .line 10158
    :pswitch_data_134
    .packed-switch 0x2
        :pswitch_28
        :pswitch_65
        :pswitch_116
    .end packed-switch
.end method

.method private e()V
    .registers 3

    .prologue
    .line 191
    invoke-static {}, Lcom/flurry/sdk/lr;->b()V

    .line 2227
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 3097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 2227
    invoke-static {v0}, Lcom/flurry/sdk/ls;->a(Landroid/content/Context;)Z

    move-result v0

    .line 193
    if-nez v0, :cond_10

    .line 210
    :cond_f
    :goto_f
    return-void

    .line 3231
    :cond_10
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v0

    .line 4097
    iget-object v0, v0, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 3231
    invoke-static {v0}, Lcom/flurry/sdk/ls;->b(Landroid/content/Context;)Lcom/flurry/sdk/jo;

    move-result-object v0

    .line 197
    iput-object v0, p0, Lcom/flurry/sdk/je;->g:Lcom/flurry/sdk/jo;

    .line 200
    invoke-virtual {p0}, Lcom/flurry/sdk/je;->c()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 205
    invoke-direct {p0}, Lcom/flurry/sdk/je;->h()V

    .line 207
    new-instance v0, Lcom/flurry/sdk/jg;

    invoke-direct {v0}, Lcom/flurry/sdk/jg;-><init>()V

    .line 208
    invoke-static {}, Lcom/flurry/sdk/kb;->a()Lcom/flurry/sdk/kb;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/kb;->a(Lcom/flurry/sdk/jz;)V

    goto :goto_f
.end method

.method private static f()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 311
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 5097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 5393
    const-string/jumbo v2, ".flurryb."

    .line 311
    invoke-virtual {v1, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 312
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 326
    :cond_16
    :goto_16
    return-object v0

    .line 319
    :cond_17
    :try_start_17
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_21} :catch_31
    .catchall {:try_start_17 .. :try_end_21} :catchall_40

    .line 6372
    const/4 v1, 0x1

    :try_start_22
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_49
    .catchall {:try_start_22 .. :try_end_25} :catchall_47

    move-result v3

    if-eq v1, v3, :cond_2c

    .line 324
    :goto_28
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_16

    .line 6375
    :cond_2c
    :try_start_2c
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2f} :catch_49
    .catchall {:try_start_2c .. :try_end_2f} :catchall_47

    move-result-object v0

    goto :goto_28

    .line 321
    :catch_31
    move-exception v1

    move-object v2, v0

    .line 322
    :goto_33
    const/4 v3, 0x6

    :try_start_34
    sget-object v4, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    const-string/jumbo v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_34 .. :try_end_3c} :catchall_47

    .line 324
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_16

    :catchall_40
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_43
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_47
    move-exception v0

    goto :goto_43

    .line 321
    :catch_49
    move-exception v1

    goto :goto_33
.end method

.method private g()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v1

    .line 7097
    iget-object v1, v1, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 330
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 331
    if-nez v1, :cond_e

    .line 363
    :cond_d
    :goto_d
    return-object v0

    .line 335
    :cond_e
    new-instance v2, Lcom/flurry/sdk/je$3;

    invoke-direct {v2, p0}, Lcom/flurry/sdk/je$3;-><init>(Lcom/flurry/sdk/je;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_d

    array-length v2, v1

    if-eqz v2, :cond_d

    .line 346
    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 348
    invoke-static {}, Lcom/flurry/sdk/jr;->a()Lcom/flurry/sdk/jr;

    move-result-object v2

    .line 8097
    iget-object v2, v2, Lcom/flurry/sdk/jr;->a:Landroid/content/Context;

    .line 348
    invoke-virtual {v2, v1}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 349
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 356
    :try_start_31
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_3b} :catch_57
    .catchall {:try_start_31 .. :try_end_3b} :catchall_66

    .line 8379
    const v1, 0xb5fa

    :try_start_3e
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_41} :catch_6f
    .catchall {:try_start_3e .. :try_end_41} :catchall_6d

    move-result v3

    if-eq v1, v3, :cond_48

    .line 361
    :cond_44
    :goto_44
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_d

    .line 8383
    :cond_48
    const/4 v1, 0x2

    :try_start_49
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    move-result v3

    if-ne v1, v3, :cond_44

    .line 8387
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    .line 8389
    invoke-interface {v2}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;
    :try_end_55
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_55} :catch_6f
    .catchall {:try_start_49 .. :try_end_55} :catchall_6d

    move-result-object v0

    goto :goto_44

    .line 358
    :catch_57
    move-exception v1

    move-object v2, v0

    .line 359
    :goto_59
    const/4 v3, 0x6

    :try_start_5a
    sget-object v4, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    const-string/jumbo v5, "Error when loading deviceId"

    invoke-static {v3, v4, v5, v1}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5a .. :try_end_62} :catchall_6d

    .line 361
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    goto :goto_d

    :catchall_66
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_69
    invoke-static {v2}, Lcom/flurry/sdk/lr;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_6d
    move-exception v0

    goto :goto_69

    .line 358
    :catch_6f
    move-exception v1

    goto :goto_59
.end method

.method private h()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 409
    .line 9107
    iget-object v0, p0, Lcom/flurry/sdk/je;->g:Lcom/flurry/sdk/jo;

    if-nez v0, :cond_33

    .line 9108
    const/4 v0, 0x0

    .line 410
    :goto_6
    if-eqz v0, :cond_1b

    .line 411
    sget-object v1, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    const-string/jumbo v2, "Fetched advertising id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v1, p0, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/jm;->b:Lcom/flurry/sdk/jm;

    invoke-static {v0}, Lcom/flurry/sdk/lr;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10123
    :cond_1b
    iget-object v0, p0, Lcom/flurry/sdk/je;->h:Ljava/lang/String;

    .line 416
    if-eqz v0, :cond_32

    .line 417
    sget-object v1, Lcom/flurry/sdk/je;->b:Ljava/lang/String;

    const-string/jumbo v2, "Fetched device id"

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/kf;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v1, p0, Lcom/flurry/sdk/je;->a:Ljava/util/Map;

    sget-object v2, Lcom/flurry/sdk/jm;->a:Lcom/flurry/sdk/jm;

    invoke-static {v0}, Lcom/flurry/sdk/lr;->e(Ljava/lang/String;)[B

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_32
    return-void

    .line 9111
    :cond_33
    iget-object v0, p0, Lcom/flurry/sdk/je;->g:Lcom/flurry/sdk/jo;

    .line 10029
    iget-object v0, v0, Lcom/flurry/sdk/jo;->a:Ljava/lang/String;

    goto :goto_6
.end method


# virtual methods
.method public final c()Z
    .registers 3

    .prologue
    .line 103
    sget-object v0, Lcom/flurry/sdk/je$a;->e:Lcom/flurry/sdk/je$a;

    iget-object v1, p0, Lcom/flurry/sdk/je;->f:Lcom/flurry/sdk/je$a;

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/je$a;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 115
    iget-object v1, p0, Lcom/flurry/sdk/je;->g:Lcom/flurry/sdk/jo;

    if-nez v1, :cond_6

    .line 119
    :cond_5
    :goto_5
    return v0

    :cond_6
    iget-object v1, p0, Lcom/flurry/sdk/je;->g:Lcom/flurry/sdk/jo;

    .line 2038
    iget-boolean v1, v1, Lcom/flurry/sdk/jo;->b:Z

    .line 119
    if-eqz v1, :cond_5

    const/4 v0, 0x0

    goto :goto_5
.end method
