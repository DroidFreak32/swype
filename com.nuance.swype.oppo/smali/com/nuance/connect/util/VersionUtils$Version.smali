.class public Lcom/nuance/connect/util/VersionUtils$Version;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/util/VersionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nuance/connect/util/VersionUtils$Version;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "[0-9]+(\\.[0-9]+)*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->hashCode:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I
    .locals 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->get()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->get()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v0, v5

    array-length v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v4, v1

    :goto_1
    if-ge v4, v7, :cond_0

    array-length v0, v5

    if-ge v4, v0, :cond_2

    aget-object v0, v5, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    array-length v3, v6

    if-ge v4, v3, :cond_3

    aget-object v3, v6, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_3
    if-ge v0, v3, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    move v3, v1

    goto :goto_3

    :cond_4
    if-le v0, v3, :cond_5

    move v1, v2

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    check-cast p1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->hashCode:I

    return v0
.end method
