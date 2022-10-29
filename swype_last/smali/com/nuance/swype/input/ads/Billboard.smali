.class public Lcom/nuance/swype/input/ads/Billboard;
.super Ljava/lang/Object;
.source "Billboard.java"


# static fields
.field private static final MSG_SHOW_CLOSE_BUTTON:I = 0x1

.field private static final log:Lcom/nuance/swype/util/LogManager$Log;


# instance fields
.field private mAdLoadRequested:Z

.field private final mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

.field private mAdStatusChangeListener:Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;

.field private mBillboardView:Landroid/view/ViewGroup;

.field private mCloseButton:Landroid/widget/ImageView;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPlaceHolderAdView:Landroid/view/View;

.field private mSetupDone:Z

.field private final mWaitTimeToShowCloseButton:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string/jumbo v0, "Billboard"

    invoke-static {v0}, Lcom/nuance/swype/util/LogManager;->getLog(Ljava/lang/String;)Lcom/nuance/swype/util/LogManager$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcom/nuance/swype/input/ads/Billboard$3;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ads/Billboard$3;-><init>(Lcom/nuance/swype/input/ads/Billboard;)V

    iput-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdStatusChangeListener:Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;

    .line 57
    iput-object p1, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->ad_config_wait_time_to_show_close_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mWaitTimeToShowCloseButton:J

    .line 59
    invoke-static {p1}, Lcom/nuance/swype/input/ads/AdFactory;->createAdForCandidatesView(Landroid/content/Context;)Lcom/nuance/swype/input/ads/AdProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    .line 60
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdStatusChangeListener:Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/AdProvider;->addOnAdLoadStatusChangeListener(Lcom/nuance/swype/input/ads/AdProvider$OnAdLoadStatusChangeListener;)V

    .line 61
    new-instance v0, Lcom/nuance/swype/input/ads/Billboard$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/input/ads/Billboard$1;-><init>(Lcom/nuance/swype/input/ads/Billboard;)V

    invoke-static {v0}, Lcom/nuance/android/util/WeakReferenceHandler;->create(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method static synthetic access$000()Lcom/nuance/swype/util/LogManager$Log;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nuance/swype/input/ads/Billboard;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/Billboard;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$202(Lcom/nuance/swype/input/ads/Billboard;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/Billboard;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdLoadRequested:Z

    return p1
.end method

.method static synthetic access$300(Lcom/nuance/swype/input/ads/Billboard;)J
    .registers 3
    .param p0, "x0"    # Lcom/nuance/swype/input/ads/Billboard;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mWaitTimeToShowCloseButton:J

    return-wide v0
.end method

.method private hide()V
    .registers 5

    .prologue
    .line 216
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Hiding billboard"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 217
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->hidePlaceholderView()V

    .line 218
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->hideAdsView()V

    .line 219
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 220
    return-void
.end method

.method private setupAdProvider()V
    .registers 5

    .prologue
    .line 123
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Setting up the ad provider"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/ads/AdProvider;->setup(Landroid/view/ViewGroup;)V

    .line 125
    return-void
.end method

.method private setupPlaceholder()V
    .registers 6

    .prologue
    .line 161
    sget-object v1, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Setting up the placeholder"

    aput-object v4, v2, v3

    invoke-interface {v1, v2}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    sget v2, Lcom/nuance/swype/input/R$id;->placeholder_ad:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mPlaceHolderAdView:Landroid/view/View;

    .line 163
    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    sget v2, Lcom/nuance/swype/input/R$string;->press_hod_swype_key_for_swype_store:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nuance/swype/input/ads/Billboard;->stringToSpannable(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object v0

    .line 164
    .local v0, "placeHolderContent":Landroid/text/Spannable;
    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mPlaceHolderAdView:Landroid/view/View;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method private stringToSpannable(Ljava/lang/String;)Landroid/text/Spannable;
    .registers 11
    .param p1, "inputString"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 175
    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 176
    .local v3, "ss":Landroid/text/SpannableString;
    const-string/jumbo v4, ".*(%%(.+?)%%).*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 177
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 178
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v4

    if-lez v4, :cond_55

    .line 182
    iget-object v4, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    sget v5, Lcom/nuance/swype/input/R$drawable;->sym_keyboard_swype_black:I

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/nuance/swype/input/R$dimen;->ad_placeholder_icon_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;

    .line 185
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/nuance/swype/input/R$dimen;->ad_placeholder_icon_height:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 183
    invoke-virtual {v0, v7, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 186
    new-instance v1, Landroid/text/style/ImageSpan;

    invoke-direct {v1, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 187
    .local v1, "imageSpan":Landroid/text/style/ImageSpan;
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->start(I)I

    move-result v4

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->end(I)I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v3, v1, v4, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 190
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v1    # "imageSpan":Landroid/text/style/ImageSpan;
    :cond_55
    return-object v3
.end method


# virtual methods
.method protected getView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected hideAdsView()V
    .registers 5

    .prologue
    .line 146
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Requesting provider to hide ad view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/AdProvider;->hideAdView()V

    .line 148
    return-void
.end method

.method protected hideCancelButton()V
    .registers 5

    .prologue
    .line 232
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Hiding cancel button"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mCloseButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method protected hidePlaceholderView()V
    .registers 5

    .prologue
    .line 151
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Hiding placeholder"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mPlaceHolderAdView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    return-void
.end method

.method public isSetup()Z
    .registers 2

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mSetupDone:Z

    return v0
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public loadNewAd()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 196
    iget-boolean v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdLoadRequested:Z

    if-eqz v0, :cond_13

    .line 197
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Ad load request already in progress."

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 207
    :goto_12
    return-void

    .line 202
    :cond_13
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v2, "Requesting provider to load new ad"

    aput-object v2, v1, v4

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->showPlaceholderView()V

    .line 204
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/AdProvider;->loadAd()V

    .line 205
    iput-boolean v3, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdLoadRequested:Z

    .line 206
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->hideCancelButton()V

    goto :goto_12
.end method

.method public requestHide()V
    .registers 2

    .prologue
    .line 255
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->isSetup()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 256
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/Billboard;->hide()V

    .line 258
    :cond_9
    return-void
.end method

.method protected scheduleHidingCancelButton(J)V
    .registers 8
    .param p1, "milliseconds"    # J

    .prologue
    const/4 v4, 0x1

    .line 237
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Scheduling a "

    aput-object v3, v1, v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string/jumbo v3, " delayed for showing cancel button"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 239
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/nuance/swype/input/ads/Billboard;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 241
    return-void
.end method

.method public setup(Landroid/view/ViewGroup;)V
    .registers 7
    .param p1, "billboardView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x1

    .line 81
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Setting up the billboard"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    .line 85
    sget v0, Lcom/nuance/swype/input/R$id;->btn_close_billboard:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mCloseButton:Landroid/widget/ImageView;

    .line 86
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mCloseButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/nuance/swype/input/ads/Billboard$2;

    invoke-direct {v1, p0}, Lcom/nuance/swype/input/ads/Billboard$2;-><init>(Lcom/nuance/swype/input/ads/Billboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/Billboard;->setupPlaceholder()V

    .line 94
    invoke-direct {p0}, Lcom/nuance/swype/input/ads/Billboard;->setupAdProvider()V

    .line 95
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->updateViewToShowPlaceholderAd()V

    .line 96
    iput-boolean v4, p0, Lcom/nuance/swype/input/ads/Billboard;->mSetupDone:Z

    .line 97
    return-void
.end method

.method show()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 211
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Showing billboard"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mBillboardView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 213
    return-void
.end method

.method protected showAdsView()V
    .registers 5

    .prologue
    .line 141
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Requesting provider to show ad view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 142
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mAdProvider:Lcom/nuance/swype/input/ads/AdProvider;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/AdProvider;->showAdView()V

    .line 143
    return-void
.end method

.method protected showCancelButton()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 227
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Showing cancel button"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 228
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    return-void
.end method

.method protected showPlaceholderView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 156
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "Showing placeholder"

    aput-object v2, v1, v3

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard;->mPlaceHolderAdView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 158
    return-void
.end method

.method protected updateViewToShowAd()V
    .registers 5

    .prologue
    .line 135
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating view to show ad view"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->hidePlaceholderView()V

    .line 137
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->showAdsView()V

    .line 138
    return-void
.end method

.method protected updateViewToShowPlaceholderAd()V
    .registers 5

    .prologue
    .line 129
    sget-object v0, Lcom/nuance/swype/input/ads/Billboard;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Updating view to show placeholder"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 130
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->hideAdsView()V

    .line 131
    invoke-virtual {p0}, Lcom/nuance/swype/input/ads/Billboard;->showPlaceholderView()V

    .line 132
    return-void
.end method
