.class abstract Lcom/nuance/swype/usagedata/UsageDataEvent;
.super Ljava/lang/Object;
.source "UsageDataEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nuance/swype/usagedata/UsageDataEvent",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final log:Lcom/nuance/swype/util/LogManager$Log;

.field protected mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagEvent:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "tagEvent"    # Ljava/lang/String;

    .prologue
    .line 22
    .local p0, "this":Lcom/nuance/swype/usagedata/UsageDataEvent;, "Lcom/nuance/swype/usagedata/UsageDataEvent<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0}, Lcom/nuance/swype/usagedata/UsageDataEvent;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->log:Lcom/nuance/swype/util/LogManager$Log;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    .line 23
    iput-object p1, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mTagEvent:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected commit()V
    .registers 3

    .prologue
    .line 39
    .local p0, "this":Lcom/nuance/swype/usagedata/UsageDataEvent;, "Lcom/nuance/swype/usagedata/UsageDataEvent<TT;>;"
    iget-object v0, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mTagEvent:Ljava/lang/String;

    iget-object v1, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/nuance/swype/usagedata/UsageData;->recordEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 40
    return-void
.end method

.method public final eventError(Ljava/lang/String;)V
    .registers 6
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 33
    .local p0, "this":Lcom/nuance/swype/usagedata/UsageDataEvent;, "Lcom/nuance/swype/usagedata/UsageDataEvent<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_27

    const/16 v1, 0xa

    if-ge v0, v1, :cond_27

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_27
    iget-object v1, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->EVENT_ERR:Lcom/nuance/swype/usagedata/UsageData$EventAttribute;

    invoke-virtual {v3}, Lcom/nuance/swype/usagedata/UsageData$EventAttribute;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method protected abstract getLogTag()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    .line 44
    .local p0, "this":Lcom/nuance/swype/usagedata/UsageDataEvent;, "Lcom/nuance/swype/usagedata/UsageDataEvent<TT;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v2, "map":Ljava/lang/StringBuffer;
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "mAttributesMap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v3, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_61

    const-string/jumbo v3, "empty"

    :goto_1f
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    iget-object v3, p0, Lcom/nuance/swype/usagedata/UsageDataEvent;->mAttributes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 48
    .local v1, "it":Ljava/util/Iterator;
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_65

    .line 49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 50
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "{ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, " }, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2c

    .line 45
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_61
    const-string/jumbo v3, ""

    goto :goto_1f

    .line 52
    .restart local v1    # "it":Ljava/util/Iterator;
    :cond_65
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
