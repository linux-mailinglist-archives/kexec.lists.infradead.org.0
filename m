Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA7921ED120
	for <lists+kexec@lfdr.de>; Wed,  3 Jun 2020 15:46:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=meZL3YBSnUYIvETbWf+PI3pGKj5JGimbu54MMjsA9l8=; b=mgKOM4chvfaPIn
	nffmT/jdElZy7IvkW4XbOXHpcSO0b8JKPON91Ujznxu/S8GkB2WGeAmxoiy6SnPAX5zeR4n+25+mV
	6ClXTmuWyZFd6nSRflmXoTl2r54/NBkj2Y6/+llj5IXGnWN/M0LEq0uJW2fQYvia7HBAE5lkvN7Vn
	AkXOg8a6NyoSq3KI0jOlXLomM5NZoDlSqK4iAtM/TgeyeFpTkIlAAFdeK34hOWV9bQpqeNjcyT53B
	bmicrRZ52Sh45xa/ywUM3g2ST/J/NlacjiJIWmdllFj2allq5aCG6/XKu/R8bZelkq3IOWxM1Ysyb
	C1rQ/+M3bBX+2BYxhtYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgTiW-0001H5-L6; Wed, 03 Jun 2020 13:46:04 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgTiT-0001GZ-HW
 for kexec@lists.infradead.org; Wed, 03 Jun 2020 13:46:03 +0000
Received: by mail-lj1-x244.google.com with SMTP id c17so2764169lji.11
 for <kexec@lists.infradead.org>; Wed, 03 Jun 2020 06:45:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:sender:from:date:message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=bSV6uZWIkbUomoDOcnfRQtk75Q2ElZTcdcpx/lKYAmPzW84mHjbii38xCVdCQgDmvH
 LrrgrlL/wxQopzSZOdOsm++lSDN12ed9OTSL8u6U2hO156qPQdtrE5Wzr2eGLSGNg2yt
 VAxgAOQHuxhwbunmxFiNwD0oV0bTJEPT6+0LAIWhhfesmLJa74pCVIyFJFMrpoPlsjKb
 4UEep9Xo9fwQ00Y+R8avC4zArfGrFSY5JMunldwhDz38xR7Wtlnu5pEiiH700m8bSSCV
 kfBcH0ZSH904piewB+yLGBolP5jbnmSdG8H+Kf4UbdRBKs87DFFNFDp3yYsFdfzuYzDY
 Hn0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:sender:from:date
 :message-id:subject:to;
 bh=H8rDQEJouwBJIElP/Vpqq+PrvTZxQQy2H7A/MvyMMB0=;
 b=h2m6l3zVib08hj+6gXAlyHTkyKbJmxOR+0ftxO7V0y2V8YMNdag/p16v9EEbu3q/Gm
 I0jAt+/uVe8EgS29IHX4yBxCZnn9ozVnkbwqAtQxcAez3XdTPjWkQutAg2saPeW5CzfQ
 KoyPQplqlYI8nPaBeKWHG4flxsXlTD0JNEWIqcE6x0CsVozIJ3lTet03i2qtae8Ni3er
 lZuuU03ybgnJgIleVcpjISZoPkDS4oxWHTswG0FNIUMYxkP4V/5aSslii3YSkCQw8Xa/
 TbBZfrPZwmyBWZ5KKpGFSWQeF664s5e6hMC8Rsy0L6MFxsT68ghjSrfmwfapMJ24afQu
 rSGA==
X-Gm-Message-State: AOAM531lyr4QsCOqQI+MgNzrQDCHTl+uIBLFHra2YqxOan2SKhMnw9sr
 AWg1gNRxwe0+cJmWUhEJjZRTx6Ps88rsUm5B+LI=
X-Google-Smtp-Source: ABdhPJwXFAhx01Z36IcpZGE90NnSaaUlkyvEwJ1LskX6rILuw5Mz4rJyf65t1+ez5fKozE9KrzXEAV8P3s4fGn/nBus=
X-Received: by 2002:a2e:96cd:: with SMTP id d13mr1992355ljj.251.1591191958412; 
 Wed, 03 Jun 2020 06:45:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:7d83:0:0:0:0:0 with HTTP;
 Wed, 3 Jun 2020 06:45:57 -0700 (PDT)
From: "Mrs.Susan Jones" <joneswife.susan@gmail.com>
Date: Wed, 3 Jun 2020 14:45:57 +0100
X-Google-Sender-Auth: iin7lEuBHlJZuEG2AGqwaP-EH3c
Message-ID: <CAPK60Vi=wBuNxSwi-36mnszQBhFmtyKOZVAEb9-HaRw9cdsydg@mail.gmail.com>
Subject: HELLO: I AM MRS SUSAN JONES
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_064601_581635_6BA8B34C 
X-CRM114-Status: SPAM  (  -8.52  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.5 SUBJ_ALL_CAPS          Subject is all capitals
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [elizabeth.cole233[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [elizabeth.cole233[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
 0.1 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.4 FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
 0.0 ADVANCE_FEE_5_NEW_MONEY Advance Fee fraud and lots of money
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: susanjones.wife@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

-- 
OUR GOLDEN OPPORTUNITY

Hello Dear Friend,

Complement of the day, i hope you are doing great today. However, I am
Mrs.Susan Jones, an auditor with one of the new generation banks here
in Burkina Faso.

I am writing you this letter based on the latest development at my
Department. i discovered some abandoned huge amount of money, Ten
Million, Five hundred thousand  United States Dollars.($10.500.000).
Now I am only contacting you as a foreigner because this money cannot
be approved to a local bank account here, but can only be approved to
any foreign account and foreign beneficiary because the money is in US
dollars

This will be  a legitimate transaction once you accept to build trust
with me and follow simple instruction doing the transfer process,
until the total sum transfer out of the bank here to your own bank
account any where in the world, and I agreed to share the total money
50/50 with you once you successful confirmed it in your bank account.
But any expenses doing the transfer process will be deduct from the
amount before sharing, If you are interested to work with me and
provide a good receiving bank account, get back to me as soon as
possible with the following details below.

Your full name
Your Profession
Your direct mobile phone number
Your Scanned International passport or any of your identity

NOTE: PLEASE IT YOU ARE NOT INTERESTED DON'T BORDER TO RESPOND BACK TO
AVOID TIME WASTED.

As soon as I receive these data's, I will forward to you the
application form which you will send to the bank for the claim and
transfer of the fund into your bank account as the  new beneficial.

I am waiting to hear from you soon

Yours
Mrs.Susan Jones

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
