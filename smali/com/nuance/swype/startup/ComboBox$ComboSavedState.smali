.class final Lcom/nuance/swype/startup/ComboBox$ComboSavedState;
.super Landroid/view/View$BaseSavedState;
.source "ComboBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/startup/ComboBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComboSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/nuance/swype/startup/ComboBox$ComboSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field addNewItemText:Ljava/lang/String;

.field currentControl:I

.field currentItemText:Ljava/lang/String;

.field currentItemTextPos:I

.field editTextText:Ljava/lang/String;

.field editableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastSelectedIndex:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field selectedItemPos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 572
    new-instance v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState$1;

    invoke-direct {v0}, Lcom/nuance/swype/startup/ComboBox$ComboSavedState$1;-><init>()V

    sput-object v0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x0

    .line 546
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 547
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editableItems:Ljava/util/List;

    .line 548
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->mItems:Ljava/util/List;

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->addNewItemText:Ljava/lang/String;

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->lastSelectedIndex:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemTextPos:I

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemText:Ljava/lang/String;

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentControl:I

    .line 554
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->selectedItemPos:I

    .line 555
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editTextText:Ljava/lang/String;

    .line 556
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 530
    invoke-direct {p0, p1}, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 542
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 543
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 560
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 561
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editableItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 562
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->mItems:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 563
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->addNewItemText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 564
    iget v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->lastSelectedIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemTextPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentItemText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 567
    iget v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->currentControl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->selectedItemPos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget-object v0, p0, Lcom/nuance/swype/startup/ComboBox$ComboSavedState;->editTextText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 570
    return-void
.end method
