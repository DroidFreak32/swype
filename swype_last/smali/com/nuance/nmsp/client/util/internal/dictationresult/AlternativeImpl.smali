.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/Alternative;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "AlternativeImpl()"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_13
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "AlternativeImpl(Vector)"

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_13
    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-void
.end method

.method private a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;
    .registers 3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    return-object v0
.end method


# virtual methods
.method public addToken(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Adding token "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to alternatives"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_24
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getParentTokens()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public getTokens()Ljava/util/Vector;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public setParentTokens(Ljava/util/Vector;)V
    .registers 2

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->c:Ljava/util/Vector;

    return-void
.end method

.method public size()I
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_a

    :cond_9
    return v0

    :cond_a
    move v1, v0

    :goto_b
    if-ge v1, v2, :cond_9

    invoke-direct {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_19

    add-int/lit8 v0, v0, 0x1

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, ""

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v0, ""

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_15
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method public tokenAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Token;
    .registers 7

    const/4 v1, 0x0

    const/4 v0, -0x1

    move v3, v0

    :goto_3
    if-eq v0, p1, :cond_1f

    add-int/lit8 v2, v3, 0x1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-le v2, v3, :cond_11

    const/4 v0, 0x0

    :goto_10
    return-object v0

    :cond_11
    invoke-direct {p0, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v3

    if-nez v3, :cond_6d

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_3

    :cond_1f
    invoke-direct {p0, v3}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v2

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v0, v4, :cond_6b

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_6b

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_47
    invoke-virtual {v2, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setLeadingSpaces(I)V

    if-eqz v3, :cond_66

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_66

    add-int/lit8 v0, v3, -0x1

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a(I)Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_66
    invoke-virtual {v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->setTrailingSpaces(I)V

    move-object v0, v2

    goto :goto_10

    :cond_6b
    move v0, v1

    goto :goto_47

    :cond_6d
    move v3, v2

    goto :goto_3
.end method

.method public wordAt(I)Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Fetching alternative at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1d
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_42

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Found "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_42
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
