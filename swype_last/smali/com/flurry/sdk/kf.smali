.class public final Lcom/flurry/sdk/kf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z

.field private static b:I

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 14
    sput-boolean v1, Lcom/flurry/sdk/kf;->a:Z

    .line 23
    const/4 v0, 0x5

    sput v0, Lcom/flurry/sdk/kf;->b:I

    .line 26
    sput-boolean v1, Lcom/flurry/sdk/kf;->c:Z

    return-void
.end method

.method public static a()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x1

    sput-boolean v0, Lcom/flurry/sdk/kf;->a:Z

    .line 32
    return-void
.end method

.method public static a(I)V
    .registers 1

    .prologue
    .line 60
    sput p0, Lcom/flurry/sdk/kf;->b:I

    .line 61
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 116
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/kf;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 112
    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/flurry/sdk/kf;->c(ILjava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/kf;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 80
    .line 1120
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/flurry/sdk/kf;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/flurry/sdk/kf;->a:Z

    .line 38
    return-void
.end method

.method private static b(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 124
    sget-boolean v0, Lcom/flurry/sdk/kf;->a:Z

    if-nez v0, :cond_b

    sget v0, Lcom/flurry/sdk/kf;->b:I

    if-gt v0, p0, :cond_b

    .line 125
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/kf;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_b
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 84
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/kf;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public static c()I
    .registers 1

    .prologue
    .line 45
    sget v0, Lcom/flurry/sdk/kf;->b:I

    return v0
.end method

.method private static c(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 134
    sget-boolean v0, Lcom/flurry/sdk/kf;->c:Z

    if-eqz v0, :cond_7

    .line 135
    invoke-static {p0, p1, p2}, Lcom/flurry/sdk/kf;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_7
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/kf;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static d(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 140
    sget-boolean v0, Lcom/flurry/sdk/kf;->c:Z

    if-eqz v0, :cond_21

    .line 147
    :goto_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25

    move v0, v1

    :goto_c
    move v2, v1

    .line 148
    :goto_d
    if-ge v2, v0, :cond_20

    .line 149
    const/16 v1, 0xfa0

    sub-int v3, v0, v2

    if-le v1, v3, :cond_2a

    move v1, v0

    .line 150
    :goto_16
    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {p0, p1, v2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 152
    if-gtz v2, :cond_2d

    .line 159
    :cond_20
    return-void

    .line 140
    :cond_21
    const-string/jumbo p1, "FlurryAgent"

    goto :goto_5

    .line 147
    :cond_25
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_c

    .line 149
    :cond_2a
    add-int/lit16 v1, v2, 0xfa0

    goto :goto_16

    :cond_2d
    move v2, v1

    .line 158
    goto :goto_d
.end method

.method public static d()Z
    .registers 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/flurry/sdk/kf;->c:Z

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 108
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/kf;->b(ILjava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
