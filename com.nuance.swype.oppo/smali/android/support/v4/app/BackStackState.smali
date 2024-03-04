.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBreadCrumbShortTitleRes:I

.field private mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field private mBreadCrumbTitleRes:I

.field private mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field private mIndex:I

.field private mName:Ljava/lang/String;

.field private mOps:[I

.field private mTransition:I

.field private mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 90
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 92
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 8
    .param p1, "bse"    # Landroid/support/v4/app/BackStackRecord;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, "numRemoved":I
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 43
    .local v3, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    :goto_0
    if-eqz v3, :cond_1

    .line 44
    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v2, v6

    .line 45
    :cond_0
    iget-object v3, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    goto :goto_0

    .line 47
    :cond_1
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    .line 49
    iget-boolean v6, p1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v6, :cond_2

    .line 50
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "Not on back stack"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 53
    :cond_2
    iget-object v3, p1, Landroid/support/v4/app/BackStackRecord;->mHead$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    .line 54
    const/4 v4, 0x0

    .local v4, "pos":I
    move v5, v4

    .line 55
    .end local v4    # "pos":I
    .local v5, "pos":I
    :goto_1
    if-eqz v3, :cond_6

    .line 56
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    aput v7, v6, v5

    .line 57
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    if-eqz v6, :cond_3

    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_2
    aput v6, v7, v4

    .line 58
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    aput v7, v6, v5

    .line 59
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    aput v7, v6, v4

    .line 60
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget v7, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    aput v7, v6, v5

    .line 61
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    iget v7, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    aput v7, v6, v4

    .line 62
    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    if-eqz v6, :cond_5

    .line 63
    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 64
    .local v0, "N":I
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    aput v0, v6, v5

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :goto_3
    if-ge v1, v0, :cond_4

    .line 66
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    iget-object v6, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/Fragment;

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    aput v6, v7, v5

    .line 65
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_3

    .line 57
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_3
    const/4 v6, -0x1

    goto :goto_2

    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_4
    move v4, v5

    .line 71
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    :goto_4
    iget-object v3, v3, Landroid/support/v4/app/ActivityCompatHoneycomb;->next$fe619d5:Landroid/support/v4/app/ActivityCompatHoneycomb;

    move v5, v4

    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    goto :goto_1

    .line 69
    :cond_5
    iget-object v6, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "pos":I
    .restart local v4    # "pos":I
    const/4 v7, 0x0

    aput v7, v6, v5

    goto :goto_4

    .line 73
    .end local v4    # "pos":I
    .restart local v5    # "pos":I
    :cond_6
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    .line 74
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 75
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 76
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    .line 77
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 78
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 79
    iget v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 80
    iget-object v6, p1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v6, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 81
    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public final instantiate(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 12
    .param p1, "fm"    # Landroid/support/v4/app/FragmentManagerImpl;

    .prologue
    const/4 v11, 0x1

    .line 96
    new-instance v1, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v1, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    .line 97
    .local v1, "bse":Landroid/support/v4/app/BackStackRecord;
    const/4 v6, 0x0

    .line 98
    .local v6, "pos":I
    :goto_0
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    array-length v9, v9

    if-ge v6, v9, :cond_2

    .line 100
    new-instance v5, Landroid/support/v4/app/ActivityCompatHoneycomb;

    invoke-direct {v5}, Landroid/support/v4/app/ActivityCompatHoneycomb;-><init>()V

    .line 101
    .local v5, "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .local v7, "pos":I
    aget v9, v9, v6

    iput v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->cmd:I

    .line 102
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget v3, v9, v7

    .line 105
    .local v3, "findex":I
    if-ltz v3, :cond_0

    .line 106
    iget-object v9, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 107
    .local v2, "f":Landroid/support/v4/app/Fragment;
    iput-object v2, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    .line 111
    .end local v2    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget v9, v9, v6

    iput v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->enterAnim:I

    .line 112
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget v9, v9, v7

    iput v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->exitAnim:I

    .line 113
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget v9, v9, v6

    iput v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->popEnterAnim:I

    .line 114
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget v9, v9, v7

    iput v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->popExitAnim:I

    .line 115
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    aget v0, v9, v6

    .line 116
    .local v0, "N":I
    if-lez v0, :cond_1

    .line 117
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    .line 118
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v0, :cond_1

    .line 119
    iget-object v9, p1, Landroid/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    aget v10, v10, v7

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    .line 122
    .local v8, "r":Landroid/support/v4/app/Fragment;
    iget-object v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->removed:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    add-int/lit8 v4, v4, 0x1

    move v7, v6

    .end local v6    # "pos":I
    .restart local v7    # "pos":I
    goto :goto_2

    .line 109
    .end local v0    # "N":I
    .end local v4    # "i":I
    .end local v7    # "pos":I
    .end local v8    # "r":Landroid/support/v4/app/Fragment;
    .restart local v6    # "pos":I
    :cond_0
    const/4 v9, 0x0

    iput-object v9, v5, Landroid/support/v4/app/ActivityCompatHoneycomb;->fragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .end local v6    # "pos":I
    .restart local v0    # "N":I
    .restart local v7    # "pos":I
    :cond_1
    move v6, v7

    .line 125
    .end local v7    # "pos":I
    .restart local v6    # "pos":I
    invoke-virtual {v1, v5}, Landroid/support/v4/app/BackStackRecord;->addOp$568ae146(Landroid/support/v4/app/ActivityCompatHoneycomb;)V

    goto :goto_0

    .line 128
    .end local v0    # "N":I
    .end local v3    # "findex":I
    .end local v5    # "op":Landroid/support/v4/app/ActivityCompatHoneycomb;
    :cond_2
    iget v9, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    iput v9, v1, Landroid/support/v4/app/BackStackRecord;->mTransition:I

    .line 129
    iget v9, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    iput v9, v1, Landroid/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 130
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object v9, v1, Landroid/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 131
    iget v9, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    iput v9, v1, Landroid/support/v4/app/BackStackRecord;->mIndex:I

    .line 132
    iput-boolean v11, v1, Landroid/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 133
    iget v9, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v9, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 134
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v9, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 135
    iget v9, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v9, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 136
    iget-object v9, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v9, v1, Landroid/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 137
    invoke-virtual {v1, v11}, Landroid/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 138
    return-object v1
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 147
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 153
    iget v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 155
    return-void
.end method
