.class public Lcom/nuance/swype/input/EditState;
.super Ljava/lang/Object;
.source "EditState.java"


# static fields
.field static final STATE_CAN_NOT_RECAPTURE:I = 0x3

.field public static final STATE_COMPOSE_WORD_CANDIDATE:I = 0x1

.field static final STATE_END:I = 0xa

.field static final STATE_LAST_BACKSPACE_CLEAR_COMPOSING_WORD_LIST:I = 0x9

.field static final STATE_PUNC_OR_SYMBOL_AFTER_SELECTED_WORD:I = 0x7

.field public static final STATE_RECAPTURE:I = 0x2

.field public static final STATE_RESELECT_TO_REPLACE:I = 0x8

.field static final STATE_SELECT_DEFAULT_WORD:I = 0x4

.field static final STATE_SELECT_NONE_DEFAULT_WORD:I = 0x5

.field public static final STATE_SPACE_AFTER_SELECTED_WORD:I = 0x6

.field public static final STATE_START:I


# instance fields
.field protected final imeApp:Lcom/nuance/swype/input/IMEApplication;

.field private final mCharacterTyped:Ljava/lang/StringBuilder;

.field private final mSelectedWord:Ljava/lang/StringBuilder;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/nuance/swype/input/IMEApplication;)V
    .locals 1
    .param p1, "imeApp"    # Lcom/nuance/swype/input/IMEApplication;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    .line 65
    iput-object p1, p0, Lcom/nuance/swype/input/EditState;->imeApp:Lcom/nuance/swype/input/IMEApplication;

    .line 66
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 67
    return-void
.end method


# virtual methods
.method public appendCharacterTyped(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "seq"    # Ljava/lang/CharSequence;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 144
    return-void
.end method

.method public backSpace()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 107
    :cond_0
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 121
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 123
    :pswitch_0
    return-void

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public backSpaceClearCompositingWordCandiateList()V
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x9

    iput v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    .line 100
    return-void
.end method

.method public canDoRecapture()Z
    .locals 2

    .prologue
    .line 202
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public characterTyped(C)V
    .locals 1
    .param p1, "ch"    # C

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    return-void
.end method

.method public composeWordCandidate()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 160
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 161
    return-void
.end method

.method public current()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    return v0
.end method

.method public cursorChanged(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "charBeforeCusor"    # Ljava/lang/CharSequence;

    .prologue
    .line 90
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 96
    :cond_1
    :goto_0
    return-void

    .line 92
    :cond_2
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_3
    const/4 v0, 0x0

    .line 93
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->isWhiteSpace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    goto :goto_0
.end method

.method public end()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 154
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 155
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 156
    return-void
.end method

.method public endSession()V
    .locals 0

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->end()V

    .line 75
    return-void
.end method

.method public enterSent()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public isWhiteSpace(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 186
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public punctuationOrSymbols()V
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 134
    :pswitch_0
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 136
    :goto_0
    return-void

    .line 130
    :pswitch_1
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public recapture()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 165
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 166
    return-void
.end method

.method public reselectToReplace()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 170
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 171
    return-void
.end method

.method public runSearch(Ljava/lang/String;)V
    .locals 0
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    .line 215
    return-void
.end method

.method public selectWord(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "wordSelected"    # Ljava/lang/CharSequence;
    .param p2, "defaultWord"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v1, 0x0

    .line 174
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 180
    :goto_0
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuilder;->insert(ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 182
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    goto :goto_0
.end method

.method public selectedWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method set(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/nuance/swype/input/EditState;->mState:I

    .line 191
    return-void
.end method

.method public spaceKey()V
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/nuance/swype/input/EditState;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 85
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 87
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/nuance/swype/input/EditState;->set(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final start()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mCharacterTyped:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 148
    iget-object v0, p0, Lcom/nuance/swype/input/EditState;->mSelectedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 149
    invoke-virtual {p0, v1}, Lcom/nuance/swype/input/EditState;->set(I)V

    .line 150
    return-void
.end method

.method public startSession()V
    .locals 0

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/nuance/swype/input/EditState;->start()V

    .line 71
    return-void
.end method

.method public updateExtractedText(ILandroid/view/inputmethod/ExtractedText;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 207
    return-void
.end method
