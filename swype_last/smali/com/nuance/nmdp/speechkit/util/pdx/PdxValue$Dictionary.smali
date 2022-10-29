.class public Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;
.source "PdxValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Dictionary"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>(Ljava/util/Map;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;>;"
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;-><init>(Ljava/util/Map;I)V

    .line 50
    return-void
.end method
