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
    .registers 1

    const-string/jumbo v0, "^([0-9]+)((?:\\.([0-9]+))?(?:\\.([0-9]+))?(?:\\.([0-9]+))?)?([^\\.0-9]{1}[^\\.]*)?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Version can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    sget-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid version format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
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
    .registers 7

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v0, 0x1

    if-nez p1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v4

    if-ge v1, v4, :cond_15

    move v1, v2

    :goto_11
    if-eqz v1, :cond_23

    move v0, v1

    goto :goto_5

    :cond_15
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMajor()I

    move-result v4

    if-le v1, v4, :cond_21

    move v1, v0

    goto :goto_11

    :cond_21
    move v1, v3

    goto :goto_11

    :cond_23
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v4

    if-ge v1, v4, :cond_32

    move v1, v2

    :goto_2e
    if-eqz v1, :cond_40

    move v0, v1

    goto :goto_5

    :cond_32
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getMinor()I

    move-result v4

    if-le v1, v4, :cond_3e

    move v1, v0

    goto :goto_2e

    :cond_3e
    move v1, v3

    goto :goto_2e

    :cond_40
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v4

    if-ge v1, v4, :cond_4f

    move v1, v2

    :goto_4b
    if-eqz v1, :cond_5d

    move v0, v1

    goto :goto_5

    :cond_4f
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getPatch()I

    move-result v4

    if-le v1, v4, :cond_5b

    move v1, v0

    goto :goto_4b

    :cond_5b
    move v1, v3

    goto :goto_4b

    :cond_5d
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v4

    if-ge v1, v4, :cond_77

    move v0, v2

    :cond_68
    :goto_68
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_5

    :cond_77
    invoke-virtual {p0}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v1

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->getBuild()I

    move-result v2

    if-gt v1, v2, :cond_68

    move v0, v3

    goto :goto_68
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p0, p1}, Lcom/nuance/connect/util/VersionUtils$Version;->compareTo(Lcom/nuance/connect/util/VersionUtils$Version;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p0, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    check-cast p1, Lcom/nuance/connect/util/VersionUtils$Version;

    invoke-virtual {p1}, Lcom/nuance/connect/util/VersionUtils$Version;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method protected generateValues(Ljava/lang/String;)V
    .registers 6

    const/4 v3, 0x6

    const/4 v2, 0x0

    sget-object v0, Lcom/nuance/connect/util/VersionUtils$Version;->versionPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    :goto_8
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->major:I

    const/4 v0, 0x3

    :try_start_1a
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_24} :catch_47

    :goto_24
    const/4 v0, 0x4

    :try_start_25
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_2f} :catch_4b
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_58

    :goto_2f
    const/4 v0, 0x5

    :try_start_30
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_3a} :catch_4f

    :goto_3a
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_53

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    :goto_44
    iput-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->label:Ljava/lang/String;

    goto :goto_8

    :catch_47
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I

    goto :goto_24

    :catch_4b
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I

    goto :goto_2f

    :catch_4f
    move-exception v0

    iput v2, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I

    goto :goto_3a

    :cond_53
    const-string/jumbo v0, ""

    goto :goto_44

    :cond_57
    return-void

    :catch_58
    move-exception v0

    goto :goto_2f
.end method

.method public final get()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getBuild()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->build:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMajor()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->major:I

    return v0
.end method

.method public getMinor()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->minor:I

    return v0
.end method

.method public getPatch()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->patch:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget v0, p0, Lcom/nuance/connect/util/VersionUtils$Version;->hashCode:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

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
