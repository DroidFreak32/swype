.class public final Landroid/support/v7/view/SupportMenuInflater;
.super Landroid/view/MenuInflater;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/view/SupportMenuInflater$MenuState;,
        Landroid/support/v7/view/SupportMenuInflater$InflatedOnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActionProviderConstructorArguments:[Ljava/lang/Object;

.field private final mActionViewConstructorArguments:[Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    .line 74
    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    sput-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 91
    iput-object p1, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method static synthetic access$100(Landroid/support/v7/view/SupportMenuInflater;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/SupportMenuInflater;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/support/v7/view/SupportMenuInflater;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"    # Landroid/support/v7/view/SupportMenuInflater;

    .prologue
    .line 58
    .line 8213
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    if-nez v0, :cond_17

    .line 8214
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 8220
    :goto_6
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_15

    .line 8223
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_15

    .line 8224
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_6

    .line 8214
    :cond_15
    iput-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 8216
    :cond_17
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mRealOwner:Ljava/lang/Object;

    .line 58
    return-object v0
.end method

.method static synthetic access$500()[Ljava/lang/Class;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/v7/view/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/view/SupportMenuInflater;)[Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/view/SupportMenuInflater;

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/view/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    return-object v0
.end method

.method private parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    .registers 16
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    new-instance v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;

    invoke-direct {v2, p0, p3}, Landroid/support/v7/view/SupportMenuInflater$MenuState;-><init>(Landroid/support/v7/view/SupportMenuInflater;Landroid/view/Menu;)V

    .line 136
    .local v2, "menuState":Landroid/support/v7/view/SupportMenuInflater$MenuState;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 138
    .local v0, "eventType":I
    const/4 v1, 0x0

    .line 139
    .local v1, "lookingForEndOfUnknownTag":Z
    const/4 v6, 0x0

    .line 143
    .local v6, "unknownTagName":Ljava/lang/String;
    :cond_b
    const/4 v7, 0x2

    if-ne v0, v7, :cond_40

    .line 144
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 145
    .local v5, "tagName":Ljava/lang/String;
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a

    .line 147
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 156
    .end local v5    # "tagName":Ljava/lang/String;
    :goto_1f
    const/4 v3, 0x0

    .line 157
    .local v3, "reachedEndOfMenu":Z
    :goto_20
    if-nez v3, :cond_219

    .line 158
    packed-switch v0, :pswitch_data_21a

    .line 208
    :cond_25
    :goto_25
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_20

    .line 151
    .end local v3    # "reachedEndOfMenu":Z
    .restart local v5    # "tagName":Ljava/lang/String;
    :cond_2a
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Expecting menu, got "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    .end local v5    # "tagName":Ljava/lang/String;
    :cond_40
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 154
    const/4 v7, 0x1

    if-ne v0, v7, :cond_b

    goto :goto_1f

    .line 160
    .restart local v3    # "reachedEndOfMenu":Z
    :pswitch_48
    if-nez v1, :cond_25

    .line 164
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 165
    .restart local v5    # "tagName":Ljava/lang/String;
    const-string/jumbo v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9b

    .line 1348
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 2058
    iget-object v7, v7, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 1348
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup:[I

    invoke-virtual {v7, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 1350
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_id:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    .line 1351
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_menuCategory:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    .line 1353
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_orderInCategory:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    .line 1354
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_checkableBehavior:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    .line 1356
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_visible:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    .line 1357
    sget v8, Landroid/support/v7/appcompat/R$styleable;->MenuGroup_android_enabled:I

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    iput-boolean v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    .line 1359
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_25

    .line 167
    :cond_9b
    const-string/jumbo v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19c

    .line 2366
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 3058
    iget-object v7, v7, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    .line 2366
    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->MenuItem:[I

    invoke-virtual {v7, p2, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .line 2369
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_id:I

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    .line 2370
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_menuCategory:I

    iget v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 2371
    sget v9, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_orderInCategory:I

    iget v10, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v8, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 2372
    const/high16 v10, -0x10000

    and-int/2addr v7, v10

    const v10, 0xffff

    and-int/2addr v9, v10

    or-int/2addr v7, v9

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    .line 2374
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_title:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 2375
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_titleCondensed:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 2376
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_icon:I

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemIconResId:I

    .line 2377
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_alphabeticShortcut:I

    .line 2378
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 2379
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_numericShortcut:I

    .line 2380
    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v7

    iput-char v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemNumericShortcut:C

    .line 2381
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

    if-eqz v7, :cond_186

    .line 2383
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checkable:I

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    if-eqz v7, :cond_184

    const/4 v7, 0x1

    :goto_114
    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    .line 2389
    :goto_116
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_checked:I

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemChecked:Z

    .line 2390
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_visible:I

    iget-boolean v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemVisible:Z

    .line 2391
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_enabled:I

    iget-boolean v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupEnabled:Z

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemEnabled:Z

    .line 2392
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_showAsAction:I

    const/4 v9, -0x1

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemShowAsAction:I

    .line 2393
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_android_onClick:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 2394
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionLayout:I

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    .line 2395
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionViewClass:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 2396
    sget v7, Landroid/support/v7/appcompat/R$styleable;->MenuItem_actionProviderClass:I

    invoke-virtual {v8, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 2398
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v7, :cond_18b

    const/4 v7, 0x1

    .line 2399
    :goto_162
    if-eqz v7, :cond_18d

    iget v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v9, :cond_18d

    iget-object v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v9, :cond_18d

    .line 2400
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 4058
    sget-object v9, Landroid/support/v7/view/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 2401
    iget-object v10, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->this$0:Landroid/support/v7/view/SupportMenuInflater;

    .line 5058
    iget-object v10, v10, Landroid/support/v7/view/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    .line 2400
    invoke-virtual {v2, v7, v9, v10}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ActionProvider;

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 2411
    :goto_17c
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    .line 2413
    const/4 v7, 0x0

    iput-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    goto/16 :goto_25

    .line 2383
    :cond_184
    const/4 v7, 0x0

    goto :goto_114

    .line 2387
    :cond_186
    iget v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupCheckable:I

    iput v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCheckable:I

    goto :goto_116

    .line 2398
    :cond_18b
    const/4 v7, 0x0

    goto :goto_162

    .line 2404
    :cond_18d
    if-eqz v7, :cond_198

    .line 2405
    const-string/jumbo v7, "SupportMenuInflater"

    const-string/jumbo v9, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_198
    const/4 v7, 0x0

    iput-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    goto :goto_17c

    .line 169
    :cond_19c
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1ae

    .line 171
    invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    move-result-object v4

    .line 174
    .local v4, "subMenu":Landroid/view/SubMenu;
    invoke-direct {p0, p1, p2, v4}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V

    goto/16 :goto_25

    .line 176
    .end local v4    # "subMenu":Landroid/view/SubMenu;
    :cond_1ae
    const/4 v1, 0x1

    .line 177
    move-object v6, v5

    .line 179
    goto/16 :goto_25

    .line 182
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_1b2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 183
    .restart local v5    # "tagName":Ljava/lang/String;
    if-eqz v1, :cond_1c2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c2

    .line 184
    const/4 v1, 0x0

    .line 185
    const/4 v6, 0x0

    goto/16 :goto_25

    .line 186
    :cond_1c2
    const-string/jumbo v7, "group"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 187
    invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->resetGroup()V

    goto/16 :goto_25

    .line 188
    :cond_1d0
    const-string/jumbo v7, "item"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_204

    .line 5490
    iget-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 191
    if-nez v7, :cond_25

    .line 6270
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 192
    if-eqz v7, :cond_1ee

    .line 7270
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemActionProvider:Landroid/support/v4/view/ActionProvider;

    .line 193
    invoke-virtual {v7}, Landroid/support/v4/view/ActionProvider;->hasSubMenu()Z

    move-result v7

    if-eqz v7, :cond_1ee

    .line 194
    invoke-virtual {v2}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->addSubMenuItem()Landroid/view/SubMenu;

    goto/16 :goto_25

    .line 7478
    :cond_1ee
    const/4 v7, 0x1

    iput-boolean v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemAdded:Z

    .line 7479
    iget-object v7, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v8, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->groupId:I

    iget v9, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemId:I

    iget v10, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v11, v2, Landroid/support/v7/view/SupportMenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v7, v8, v9, v10, v11}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/support/v7/view/SupportMenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    goto/16 :goto_25

    .line 199
    :cond_204
    const-string/jumbo v7, "menu"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 200
    const/4 v3, 0x1

    goto/16 :goto_25

    .line 205
    .end local v5    # "tagName":Ljava/lang/String;
    :pswitch_210
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Unexpected end of document"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 210
    :cond_219
    return-void

    .line 158
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_210
        :pswitch_48
        :pswitch_1b2
    .end packed-switch
.end method


# virtual methods
.method public final inflate(ILandroid/view/Menu;)V
    .registers 8
    .param p1, "menuRes"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 108
    instance-of v3, p2, Landroid/support/v4/internal/view/SupportMenu;

    if-nez v3, :cond_8

    .line 109
    invoke-super {p0, p1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 126
    :cond_7
    :goto_7
    return-void

    .line 113
    :cond_8
    const/4 v2, 0x0

    .line 115
    .local v2, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_9
    iget-object v3, p0, Landroid/support/v7/view/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    .line 116
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 118
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-direct {p0, v2, v0, p2}, Landroid/support/v7/view/SupportMenuInflater;->parseMenu(Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/view/Menu;)V
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_1a} :catch_20
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_1a} :catch_31
    .catchall {:try_start_9 .. :try_end_1a} :catchall_2a

    .line 124
    if-eqz v2, :cond_7

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    .line 119
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    :catch_20
    move-exception v1

    .line 120
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_21
    new-instance v3, Landroid/view/InflateException;

    const-string/jumbo v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_2a

    .line 124
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_2a
    move-exception v3

    if-eqz v2, :cond_30

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_30
    throw v3

    .line 121
    :catch_31
    move-exception v1

    .line 122
    .local v1, "e":Ljava/io/IOException;
    :try_start_32
    new-instance v3, Landroid/view/InflateException;

    const-string/jumbo v4, "Error inflating menu XML"

    invoke-direct {v3, v4, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_2a
.end method
