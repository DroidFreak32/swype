.class Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$1;
.super Ljava/lang/Object;
.source "AddonDictionariesPrefs.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter$1;->this$0:Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/AddonDictionariesPrefs$ChineseDictionariesAdapter;->notifyDataSetChanged()V

    .line 366
    return-void
.end method
