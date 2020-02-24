Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325A416A43E
	for <lists+kexec@lfdr.de>; Mon, 24 Feb 2020 11:47:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iz+3fRWJ3+z/y/xhLEaD8GvKK9djaxwZfM2JLBaM+yQ=; b=ooiIwSQXs++cXp
	aIglymG+U36Mb+rqIYKVtJRGR/PWeAz5IPzqlxRReZ2BQex8dWBtOZBZiLlCdSGeVAb/zNZ5bOoSQ
	oH+qFRHRYTW4I3mbnMMpxF5bDNAm3nNEXU09V2RNEsv2bhg6Erl/xYii0VC5I/hedW75ELR72U+LV
	/oTGBOA4HvCJN6Rd77qFzakubr+2nquEpY7MeEKZSvnXJXCwAwDcxcVm3e9bcrAevoXDuhu5voUBR
	KIJs6QmuiCD1OX3XRKtzxx/gHnu44iv78J5VT/G2bZTgb/btOZ1VgC7juvvk2zS/jmcwcU5t5VbMl
	vXmoVSwsNFwYHwyz6ACg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6BGO-0003QW-5X; Mon, 24 Feb 2020 10:47:00 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6BGK-0003Pl-8U
 for kexec@lists.infradead.org; Mon, 24 Feb 2020 10:46:57 +0000
Received: by mail-oi1-x243.google.com with SMTP id v19so8481573oic.12
 for <kexec@lists.infradead.org>; Mon, 24 Feb 2020 02:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=lDf/2jKoQq0tiwN4yvaRqNKhcMTgJatZlaUy0hnS+Lk=;
 b=RImtWhNtdHxzfGU+xUOd3dQzAEShSoKuL+dZNO0oYA5gmYIaZ8RbHB5LDs+KrtUVm+
 kz74/pXVz16chTcbV3gplIGzT68mrx92aovDMmeGmb+snAP4np5DmsPvSo6FmAK7R3Sj
 BQzgyVllZ0e4d/C73XarDDfe4XRuQiCZiRdvJjitICXfPJ5e6LDLrseEYm0Kj9GnB0R+
 YM2kZ4XSpx88K00McBiVIB9FfAuSGim7hhjqPjIjt/SdPFPZXGPy5WIQcen17gn+X36A
 alqKE3ahOShTm2GROlUBPtlAbSgqv56yhvvU4ivBm84Yi3BrBJrvT331WVZabtglUncd
 Nr6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=lDf/2jKoQq0tiwN4yvaRqNKhcMTgJatZlaUy0hnS+Lk=;
 b=mICY/mIRfk4uJHeMIs+N9fBMiiILQSNoqAP7b+N/U3ooj/gvIbBN5nPnTHW+O1kM4F
 IXJklQVyYaBpokvX2JluWjLVrlXzd2fwEgU5aHbNKONlYk1T7wMi72yLYUs2j/eVnPfr
 7qliRDHxYB7QOYNzq7L6qJZ97PRcyfRZRS6avtofuqqACxsFkHzPOmsr2u/nIHrXmh9Q
 yUnBGBMQrudjUlJqGk14fWetVn+Du0zWmWRa0H/k+SdDBkiBn1oLPJo0Jn5Gs8BXmfdn
 WKgeyBeZ8JDBgg6mMqCuPouzlKv6UR6dZ9tFv/iv0fyl5ppLHKGpe9ax18TINMu5vkm1
 EP+g==
X-Gm-Message-State: APjAAAVL4wOQP9XbfX0+rHr7Eb3/YMHlZUF0dJ/9AWN7gHnjEvctR6bM
 4p4QesMEaZtIaWLZ3PJQXeB333m2D1A/P6uXpRU=
X-Google-Smtp-Source: APXvYqzZ5ZVc0CvrN4k68fgJy3N4rRgubD3abOqcLyb5jcZolKFdMu1KQN6mEi9IPbdkA2r+AzH6Y0zbXpicGTH8FGI=
X-Received: by 2002:a05:6808:30d:: with SMTP id
 i13mr11505718oie.144.1582541213563; 
 Mon, 24 Feb 2020 02:46:53 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a4a:800b:0:0:0:0:0 with HTTP; Mon, 24 Feb 2020 02:46:53
 -0800 (PST)
From: Abraham Ummel <attn.mainze.klaus@gmail.com>
Date: Mon, 24 Feb 2020 10:46:53 +0000
Message-ID: <CAKRAN88M7AKuDiGr1feOCt3SYAXwDSFbWKCf=-2UqUEj3achhw@mail.gmail.com>
Subject: =?UTF-8?B?5oqV6LWE6aG555uu?=
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_024656_328458_502926D3 
X-CRM114-Status: UNSURE (  -3.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [attn.mainze.klaus[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
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
Reply-To: ummel.investments@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

R29vZCBkYXkNCg0KaSBob3BlIHlvdSByZWNlaXZlZCB0aGUgZW1haWwgaSBzZW50IHRvIHlvdSBl
YXJsaWVyPyBpIGFtIHNlZWtpbmcgZm9yDQphIHBvc3NpYmxlIGludmVzdG1lbnQgcGFydG5lcnNo
aXAgd2l0aCB5b3UgaW4geW91ciBjb3VudHJ5IGFuZCBwZXJoYXBzDQp3aXRoIHlvdXIgYXNzaXN0
YW5jZSB3ZSBjb3VsZCBnZXQgbG93IHRheCByYXRlcw0KSSBhbSBpbnRlcmVzdGVkIGluIHJlYWwg
ZXN0YXRlcywgaG90ZWwgbWFuYWdlbWVudCwgb2lsIGFuZCBnYXMsIGhlYWx0aA0KY2FyZSBvciBh
bnkgb3RoZXIgYnVzaW5lc3MgeW91IGRlZW0gcHJvZml0YWJsZS4NCklmIHlvdSBhcmUgd2lsbGlu
ZyB0byBwYXJ0bmVyIHdpdGggbWUsIGtpbmRseSBpbmRpY2F0ZSB5b3VyIGFjY2VwdGFuY2UNCmZv
ciBtb3JlIGRldGFpbHMuDQpCZXN0IHJlZ2FyZHMNCkFicmFoYW0gVW1tZWwNClp1cmljaCBTd2l0
emVybGFuZA0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09DQrnvo7lpb3nmoTkuIDlpKkNCg0K5oiR5biM5pyb5oKo5pS25Yiw5oiR5LmL5YmN5Y+R6YCB
57uZ5oKo55qE55S15a2Q6YKu5Lu25ZCX77yfIC7miJHmraPlnKjlr7vmsYLkuI7mgqjlnKjmgqjm
iYDlnKjlm73lrrYv5Zyw5Yy655qE5oqV6LWE5LyZ5Ly05YWz57O777yM5Lmf6K645Zyo5oKo55qE
5Y2P5Yqp5LiL77yM5oiR5Lus5Y+v5Lul6I635b6X6L6D5L2O55qE56iO546HDQou5oiR5a+55oi/
5Zyw5Lqn77yM6YWS5bqX566h55CG77yM55+z5rK55ZKM5aSp54S25rCU77yM5Yy755aX5L+d5YGl
5oiW5oKo6K6k5Li65Y+v55uI5Yip55qE5Lu75L2V5YW25LuW5Lia5Yqh5oSf5YW06Laj44CC5aaC
5p6c5oKo5oS/5oSP5LiO5oiR5ZCI5L2c77yM6K+36KGo5piO5oKo55qE5o6l5Y+X5Lul6I635Y+W
5pu05aSa6K+m57uG5L+h5oGvLg0K5pyA5aW955qE56Wd56aPIOS6muS8r+aLiee9lcK35LmM5qKF
5bCU77yIQWJyYWhhbSBVbW1lbO+8iQ0K55Ge5aOr6IuP6buO5LiWDQpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwprZXhlYyBtYWlsaW5nIGxpc3QKa2V4ZWNA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2tleGVjCg==
