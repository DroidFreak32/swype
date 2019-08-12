.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Vector;

.field private c:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;Ljava/util/Hashtable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sentences constituting the dictation result."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    iput-object p2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;)V

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->d()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trying to add a null sentence to the dictation result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .locals 3

    new-instance v2, Ljava/util/Vector;

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/Vector;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    invoke-direct {v0, v2, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 12

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getStartTime()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;->getEndTime()J

    move-result-wide v6

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Getting alternatives of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at times ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_1
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(JJ)Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    if-ne v0, p1, :cond_3

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Found the same sentence at index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b(JJ)Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->setParentTokens(Ljava/util/Vector;)V

    sget-object v9, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v9}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v9, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Got alternative ["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] for sentence at index "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->size()I

    move-result v9

    if-nez v9, :cond_5

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got no alternative for sentence at index "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/AlternativeImpl;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string v9, "That alternative has already been given by another sentence."

    invoke-virtual {v0, v9}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3, v9, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    move-object v0, v2

    goto/16 :goto_0
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;JJJ)V
    .locals 10

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-virtual {p1, v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    move-object v1, v0

    :goto_1
    invoke-virtual {p0, v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    move-wide v2, p2

    move-wide v4, p4

    move-wide/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJJ)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->size()I

    move-result v0

    move v1, v0

    :goto_2
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JI)V

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    return-void
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .locals 3

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->c()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1, v2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method final a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJ)V
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    if-eq v0, p1, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(JJ)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method final b(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method final c(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Did not find the provided sentence in the dictation result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method final d(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public getExtraInformation()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    return-object v0
.end method

.method public sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public update([B)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResultFactory;->createDictationResult([B)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v10

    iget-object v11, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->b:Ljava/util/Vector;

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    move v8, v0

    :goto_0
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_1

    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v0

    rem-int v0, v9, v0

    invoke-virtual {v11, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0, p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;)V

    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v1

    rem-int v1, v9, v1

    invoke-interface {v10, v1}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->sentenceAt(I)Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a()Lcom/nuance/nmsp/client/util/dictationresult/Sentence;

    move-result-object v1

    check-cast v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->e()J

    move-result-wide v2

    move-wide v4, v2

    move-wide v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;JJJ)V

    invoke-direct {p0, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->a(Lcom/nuance/nmsp/client/util/dictationresult/Sentence;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_0
    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->size()I

    move-result v0

    move v8, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const-string v1, "utterance-length"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->getExtraInformation()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "utterance-length"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const-string v3, "utterance-length"

    new-instance v4, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const-string v1, "processed-audio-frame-count"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->getExtraInformation()Ljava/util/Hashtable;

    move-result-object v1

    const-string v2, "processed-audio-frame-count"

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const-string v3, "processed-audio-frame-count"

    new-instance v4, Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v10}, Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;->getExtraInformation()Ljava/util/Hashtable;

    move-result-object v0

    const-string v1, "InputAudioLength"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;->c:Ljava/util/Hashtable;

    const-string v2, "InputAudioLength"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method
