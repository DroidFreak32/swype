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


# static fields
.field private static final versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private build:I

.field private final hashCode:I

.field private label:Ljava/lang/String;

.field private major:I

.field private minor:I

.field private patch:I

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "^([0-9]+)((?:\\.([0-9]+))?(?:\\.([0-9]+))?(?:\\.([0-9]+))?)?([^\\.0-9]{1}[^\\.]*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Version can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/VersionUtils$Version;->generateValues(Ljava/lang/String;)V

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
    .locals 5

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v4

    if-ge v1, v4, :cond_2

    move v1, v2

    :goto_1
    if-eqz v1, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v4

    if-le v1, v4, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v4

    if-ge v1, v4, :cond_5

    move v1, v2

    :goto_2
    if-eqz v1, :cond_7

    move v0, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v4

    if-le v1, v4, :cond_6

    move v1, v0

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v4

    if-ge v1, v4, :cond_8

    move v1, v2

    :goto_3
    if-eqz v1, :cond_a

    move v0, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v4

    if-le v1, v4, :cond_9

    move v1, v0

    goto :goto_3

    :cond_9
    move v1, v3

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v4

    if-ge v1, v4, :cond_c

    move v0, v2

    :cond_b
    :goto_4
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v2

    if-gt v1, v2, :cond_b

    move v0, v3

    goto :goto_4
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

.method protected generateValues(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x6

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->major:I

    const/4 v0, 0x3

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x4

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    const/4 v0, 0x5

    :try_start_2
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    iput-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->label:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I

    goto :goto_1

    :catch_1
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I

    goto :goto_2

    :catch_2
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I

    goto :goto_3

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_4

    :cond_1
    return-void

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public final get()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getBuild()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->major:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I

    return v0
.end method

.method public getPatch()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->major:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/util/VersionUtils$Version;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
