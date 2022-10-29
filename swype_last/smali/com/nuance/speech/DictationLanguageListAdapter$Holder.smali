.class Lcom/nuance/speech/DictationLanguageListAdapter$Holder;
.super Ljava/lang/Object;
.source "DictationLanguageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/speech/DictationLanguageListAdapter;
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
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;->label:Landroid/widget/TextView;

    .line 129
    iput-object p2, p0, Lcom/nuance/speech/DictationLanguageListAdapter$Holder;->checkable:Landroid/widget/Checkable;

    .line 130
    return-void
.end method
