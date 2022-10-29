.class Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;
.super Ljava/lang/Object;
.source "CustomWordsSynchronizerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomWordsSynchronizerAction"
.end annotation


# instance fields
.field private final ActionType:I

.field private final CustomWordsAddSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final CustomWordsRemoveSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final DictationType:Ljava/lang/String;

.field private final IsToClearAllCustomWords:Z

.field private final IsToDeleteAllUserInformation:Z

.field private final Language:Ljava/lang/String;

.field final synthetic this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;Z)V
    .registers 10
    .param p2, "actionType"    # I
    .param p3, "dictationType"    # Ljava/lang/String;
    .param p4, "language"    # Ljava/lang/String;
    .param p6, "clearAllCustomWords"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 40
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->this$0:Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p2, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I

    .line 42
    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->DictationType:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->Language:Ljava/lang/String;

    .line 44
    if-nez p2, :cond_1f

    move-object v0, p5

    :goto_10
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsAddSet:Ljava/util/Set;

    .line 45
    if-ne p2, v2, :cond_21

    .end local p5    # "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_14
    iput-object p5, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsRemoveSet:Ljava/util/Set;

    .line 46
    iput-boolean p6, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToClearAllCustomWords:Z

    .line 47
    const/4 v0, 0x3

    if-ne p2, v0, :cond_23

    move v0, v2

    :goto_1c
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToDeleteAllUserInformation:Z

    .line 48
    return-void

    .restart local p5    # "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1f
    move-object v0, v1

    .line 44
    goto :goto_10

    :cond_21
    move-object p5, v1

    .line 45
    goto :goto_14

    .line 47
    .end local p5    # "words":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_23
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->ActionType:I

    return v0
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->DictationType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->Language:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsAddSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Ljava/util/Set;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->CustomWordsRemoveSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToClearAllCustomWords:Z

    return v0
.end method

.method static synthetic access$600(Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/CustomWordsSynchronizerImpl$CustomWordsSynchronizerAction;->IsToDeleteAllUserInformation:Z

    return v0
.end method
