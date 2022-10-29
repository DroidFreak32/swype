.class public Lcom/nuance/connect/util/VersionUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/connect/util/VersionUtils$Version;
    }
.end annotation


# static fields
.field private static final VERSION_5_1:Lcom/nuance/connect/util/VersionUtils$Version;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/nuance/connect/util/VersionUtils$Version;

    const-string/jumbo v1, "5.1"

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nuance/connect/util/VersionUtils;->VERSION_5_1:Lcom/nuance/connect/util/VersionUtils$Version;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static hasKeyChanged(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z
    .registers 3

    sget-object v0, Lcom/nuance/connect/util/VersionUtils;->VERSION_5_1:Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-gez v0, :cond_12

    sget-object v0, Lcom/nuance/connect/util/VersionUtils;->VERSION_5_1:Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p1, v0}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-ltz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static isAtLeastVerson(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-direct {v0, p0}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-direct {v1, p1}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static isDataCleanupRequiredOnUpgrade(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z
    .registers 4

    invoke-static {p0, p1}, Lcom/nuance/connect/util/VersionUtils;->hasKeyChanged(Lcom/nuance/connect/util/VersionUtils$Version;Lcom/nuance/connect/util/VersionUtils$Version;)Z

    move-result v0

    if-nez v0, :cond_1c

    sget-object v0, Lcom/nuance/connect/util/VersionUtils;->VERSION_5_1:Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p0, v0}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-ltz v0, :cond_1e

    new-instance v0, Lcom/nuance/connect/util/VersionUtils$Version;

    const-string/jumbo v1, "5.1.4"

    invoke-direct {v0, v1}, Lcom/nuance/connect/util/VersionUtils$Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    if-gtz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    :goto_1d
    return v0

    :cond_1e
    const/4 v0, 0x0

    goto :goto_1d
.end method
