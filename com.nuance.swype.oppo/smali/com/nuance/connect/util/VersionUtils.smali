.class public Lcom/nuance/connect/util/VersionUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/VersionUtils$Version;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastVerson(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-direct {v1, p1}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
