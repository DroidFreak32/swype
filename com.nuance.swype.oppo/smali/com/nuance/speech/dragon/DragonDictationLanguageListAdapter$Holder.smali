.class Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;
.super Ljava/lang/Object;
.source "DragonDictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Holder"
.end annotation


# instance fields
.field public final checkable:Landroid/widget/Checkable;

.field public final label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/Checkable;)V
    .locals 0
    .param p1, "label"    # Landroid/widget/TextView;
    .param p2, "button"    # Landroid/widget/Checkable;

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 116
    iput-object p2, p0, Lcom/nuance/speech/dragon/DragonDictationLanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 117
    return-void
.end method
