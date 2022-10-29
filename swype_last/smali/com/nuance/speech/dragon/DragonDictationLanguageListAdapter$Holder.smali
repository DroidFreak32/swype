.class Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;
.super Ljava/lang/Object;
.source "DragonDictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# instance fields
.field public final checkable:Landroid/widget/Checkable;

.field public final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V
    .registers 3
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "button"    # Landroid/widget/Checkable;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 119
    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 120
    return-void
.end method
