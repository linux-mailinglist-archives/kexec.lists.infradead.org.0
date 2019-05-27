Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 244292AFD0
	for <lists+kexec@lfdr.de>; Mon, 27 May 2019 10:15:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zKXZ9eW5iPFAUtSAsHzYDXA4ycqHLPMLqAALak7lA6E=; b=JRkuYoRKiCL6N5
	BAU97GSfCaxhr3W/g63JrkiJAwb4PoonKsJpKWvJQ8II1Kg32o0swtYnAwMa233MLV+3wWmi541YE
	1YeZTNX2Ta5wEcTh0NggUgDwvlvT1VdAmDR62hYFWTx0oV2bsxCHt86oByfQFEY1GeyRq0yr6QtgT
	0UjxZRIdWpjz0o48gnryZH8XW87DglEoX5D9/UT+jW4r5TOKWMnASMQr2KZR013itxz7VdFBLpG2+
	ZLiX0/xKSpE7Yi7bdI6ghO1LJ1sOoqjxpX8p+FU/DbYo9/qFgzzi0ik+WUhaBrgEY/xHiKRyKOATi
	B9QnzZbPk3wZIFYjUK3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVAmi-0005wR-Hl; Mon, 27 May 2019 08:15:08 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVAme-0005EQ-BV
 for kexec@lists.infradead.org; Mon, 27 May 2019 08:15:05 +0000
Received: by mail-io1-xd41.google.com with SMTP id h6so4037045ioh.3
 for <kexec@lists.infradead.org>; Mon, 27 May 2019 01:15:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=gM7KQfbz3ZyixRK5sAsCDT1jNQL5UcR9ighEfwJITVE=;
 b=UO20cbktpi/0bBp7KYDdH/B7uovDzVeiG7JHTZnXdrdeWw02wXNknj5Ee8xct6Bc+Z
 ahw6NOfIc8Vtr4m3GY4iQtLap6OuM4xbaWglXUbMFYq//Z1+xl6BGxjp1ZpDLxeU26Xf
 xch/eRoGWpmtEajw2UmNDtx8bjixaOZkV1lXfA/6N0VtPsD5Ggov4v1s1ETqrQxSpNzU
 sEeekqBUHFPAOa4N2ScVuyjd6NOFF96nCVHYUBvqcLo88fkoHgSK3RbDjiuXd7nlUq/1
 27cTZOuOmJiDpdv7gH/JY16iQkSgHf/ov9wHnedFtfZmN27oeXeojaY5Tcb+to9XhJMe
 fwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to:content-transfer-encoding;
 bh=gM7KQfbz3ZyixRK5sAsCDT1jNQL5UcR9ighEfwJITVE=;
 b=OQB5ikpu05gPH12foFnbiE0Ghqome64dlA7p8jVOLG/CLhPO8UHSDHVESGmRqtSQQl
 8n9hLA0JDEvrbD6zzAmkfqbBPAWRmWkTDZLIRnswX3npYvzeAnE79o3j6OV3k2oH6DA2
 ofnQNWJ1+6nz50lLVd6ut2/WZzkUptYI250Oqfqmss2zyhSe7/s43vi73UBYrRwVSVdH
 4p9niNxHHS6C1PvcOpD+YMY2Lex4JdNMjnpSTePpriTIDhKixzZbY6rOY4nRbgFg+gKf
 gghn739Tzy3jZeYhitAeK0ZwYOJCiklzEUgDb+/0WYL9yuj02IrdnCdiG+MiCAs3Cn6k
 CO/w==
X-Gm-Message-State: APjAAAWotWLlZg1A7Fi82Y6tesfcFiWBsdME+3oQhTx/UxP6372FMr6O
 lDCsfW3smjRnl2rarasGFJn+OqHptaGDNy9iEZM=
X-Google-Smtp-Source: APXvYqxdFrVhsikTGojz5Gd7M+Nxf8voV3c6zcC9EPVD/KfSddhYWoTa1qme/hhO09v8ZVhQjFL9K4KCoIVafbARG7g=
X-Received: by 2002:a5d:8a0c:: with SMTP id w12mr842471iod.68.1558944901174;
 Mon, 27 May 2019 01:15:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a6b:d00f:0:0:0:0:0 with HTTP; Mon, 27 May 2019 01:15:00
 -0700 (PDT)
From: PEREZ PAULETTE <perezpaulette5@gmail.com>
Date: Mon, 27 May 2019 09:15:00 +0100
Message-ID: <CAAKr3SXZ88nngJpJBqzxw9A7ChuYHaPDc95BQ58V=DUayYTPdg@mail.gmail.com>
Subject: Re
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_011504_428909_97A85F98 
X-CRM114-Status: UNSURE (  -2.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (perezpaulette5[at]gmail.com)
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (gsherri06[at]outlook.fr)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (perezpaulette5[at]gmail.com)
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.0 T_DEAR_BENEFICIARY     BODY: Dear Beneficiary:
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.4 FILL_THIS_FORM_FRAUD_PHISH Answer suspicious question(s)
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
 0.0 MONEY_FRAUD_5          Lots of money and many fraud phrases
 0.0 FORM_FRAUD_5           Fill a form and many fraud phrases
X-BeenThere: kexec@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <kexec.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/kexec/>
List-Post: <mailto:kexec@lists.infradead.org>
List-Help: <mailto:kexec-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/kexec>,
 <mailto:kexec-request@lists.infradead.org?subject=subscribe>
Reply-To: gsherri06@outlook.fr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

VW5pdGVkIE5hdGlvbnMgTGlhaXNvbiBPZmZpY2UKNDA1IEVhc3QgNDJuZCBTdHJlZXQsIE5ldyBZ
b3JrLApOWSwgMTAwMTcsIFVTQS4KVGVsOiAoKyAxKSAoNjQ2KSA2MDEtNjU5NwpFbWFpbCAodW4y
MDE5QHVzYS5jb20pCgpPdXIgRGVhciAyMDE5IEJlbmVmaWNpYXJ5CgpUaGUgVW5pdGVkIE5hdGlv
bnMgaW4gY29vcGVyYXRpb24gd2l0aCBXb3JsZCBCYW5rIGhhdmUgYWdyZWVkIHRvCmNvbXBlbnNh
dGUgeW91IHdpdGggdGhlIHN1bSBvZiBPbmUgTWlsbGlvbiBUd28gSHVuZHJlZCBUaG91c2FuZCBV
UwpEb2xsYXJzICgkMS4yTSkgYWZ0ZXIgeW91ciBuYW1lIGFuZCBlbWFpbCB3YXMgc3VibWl0dGVk
IGJ5IHRoZSBJbnRlcm5ldApJbnRlcm5hdGlvbmFsIE1vbml0b3JpbmcgR3JvdXAgZHVyaW5nIHRo
ZSBVTkNDIENvbmZlcmVuY2UgTWVldGluZwp3aGljaCB3YXMgaGVsZCB0aGlzIDAxLzA1LzIwMTkg
ZWRpdGlvbiB3aXRoIFVOIFNlY3JldGFyeSBHZW5lcmFsCkFudMOzbmlvIEd1dGVycmVzIGluIEdl
bmV2YSBTd2l0emVybGFuZC4gVGhpcyBwYXltZW50IFByb2dyYW0gaXMKb3JnYW5pemVkIGZvciBj
aGFyaXR5IG9yZ2FuaXphdGlvbi9TY2FtIHZpY3RpbXMgYW5kIGRldmVsb3BtZW50LgoKWW91ciBu
YW1lIGFwcGVhcmVkIGFtb25nIHRoZSBiZW5lZmljaWFyaWVzIHdobyB3aWxsIHJlY2VpdmUgdGhl
CnN1bSBvZiAkMS4yVVNELCBDcmVkaXRlZCB0byBPbmxpbmUgQmFuayBBVE0gQ2FyZCBhY2NvdW50
IHRoYXQgd2FzIHNldAp1cCBmb3IgeW91IGluIHRoZSBCYW5rIGFuZCBpdCBoYXMgYmVlbiBhcHBy
b3ZlZCBmb3IgaW1tZWRpYXRlIGRlbGl2ZXJ5CnRvIHlvdS4KCllvdXIgdXJnZW50IHJlc3BvbnNl
IHRvIHRoaXMgZW1haWwgd2lsbCBoZWxwIGZhY2lsaXRhdGUgdGhlIG9ud2FyZApkZWxpdmVyeSBv
ZiB5b3VyIEFUTSBjYXJkIHRvIHlvdSwgQ29udGFjdCBEZWxpdmVyeSBvZmZpY2VyIE1yLiBMYXJy
eQpXYXluZSBFLW1haWwgKCBvZmlsZTE2MEBvdXRsb29rLmNvbSApIFBob25lICsyMjktOTgxMTkx
NTcuCgpTZW5kIHRvIEhpbQpZb3VyIEZ1bGwgTmFtZSwgQWRkcmVzcywgVGVsOk5vLCBBbmQgQSBz
Y2FuIENvcHkgT2YgWW91ciBJZGVudGlmaWNhdGlvbgoKVGhhbmtzLApQRVJFWiBQQVVMRVRURQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18Ka2V4ZWMgbWFp
bGluZyBsaXN0CmtleGVjQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9rZXhlYwo=
