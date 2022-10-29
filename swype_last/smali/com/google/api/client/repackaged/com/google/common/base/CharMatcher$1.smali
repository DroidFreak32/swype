.class final Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher$1;
.super Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/api/client/repackaged/com/google/common/base/CharMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public final matches(C)Z
    .registers 5
    .param p1, "c"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 70
    sparse-switch p1, :sswitch_data_12

    .line 87
    const/16 v2, 0x2000

    if-lt p1, v2, :cond_10

    const/16 v2, 0x200a

    if-gt p1, v2, :cond_10

    :goto_d
    :sswitch_d
    return v0

    :sswitch_e
    move v0, v1

    .line 85
    goto :goto_d

    :cond_10
    move v0, v1

    .line 87
    goto :goto_d

    .line 70
    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_d
        0xa -> :sswitch_d
        0xb -> :sswitch_d
        0xc -> :sswitch_d
        0xd -> :sswitch_d
        0x20 -> :sswitch_d
        0x85 -> :sswitch_d
        0x1680 -> :sswitch_d
        0x2007 -> :sswitch_e
        0x2028 -> :sswitch_d
        0x2029 -> :sswitch_d
        0x205f -> :sswitch_d
        0x3000 -> :sswitch_d
    .end sparse-switch
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string/jumbo v0, "CharMatcher.BREAKING_WHITESPACE"

    return-object v0
.end method
