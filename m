Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF0B12CBE0
	for <lists+kexec@lfdr.de>; Mon, 30 Dec 2019 03:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=agx3njCcodzEGudDqaLcE7b5933HnbmEH8/zrg8WiF0=; b=MIZt9uJJsATsfd
	96kcB8q+nlxUTWEBLYB/g5vs3o630dhZ9FGNbgCJhKjM8/7Sp6HneyKDMdRyWdS4ZwbFSTG55Kv09
	sWSZCa65X+y1AUr6wZX2BewqpDQSVFXeZGEA34B8qiXI2HBxsDl9oe2DZHDCmiCxf7XP0pDA+XPnu
	AZzrpZKui0Fm2+Lb8KK2ANlNGK1qTp4KI+VttCC55ms8K+zATJ6CVCeBpgeypqnzfS/L/bRZS33ld
	l2O3nFUQ5s2rRjLbt5TjzJjogJOZEAhdFoWnnZ3xHRWcnOsVl9Uon5fj+Yb6FGdyCVaBn4LBmyKYq
	IzVwwow/fbZW5CnrKNJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilkhL-0003hk-1b; Mon, 30 Dec 2019 02:22:23 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilkhH-0003hH-VQ
 for kexec@lists.infradead.org; Mon, 30 Dec 2019 02:22:21 +0000
Received: by mail-wr1-x441.google.com with SMTP id w15so18862909wru.4
 for <kexec@lists.infradead.org>; Sun, 29 Dec 2019 18:22:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=EzU9pHrylmwMn2cc3fE/V3tuQBblGenH32teSDtwMMvbhnTbfZG+R7VP9cNTEPWthl
 jjJD0gChFKJceHvEzYI4YAPGwkMtYPmzBrXJGH5pLR/xXnVMZCJVXr9dzGPUJspvS3tR
 ikAJ67NbFVxLZbD70HiGcS8LDpYERf5CaTBTZ9CjYl+OVir1/hFfBP4yIaBAqfgCdTPh
 t8VTx+SiCey8QaWw/g7oBa2vInud2X0FFj+53kLXEURze5IcR0mgxhM6XBsDQ+CxAXVU
 ZZw9WsI5dADKS86PJi+UyDCuZIkFf5CEhi/v7mQzaaHcffOY5TwCON7DokQEKCcbERMZ
 vYnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=cCgjmSxLWlMql57U+O40bnMOsF2pBGMu0xtRuJWN4EM=;
 b=gibDlAc+LgDOkM0IsAc6n3r1hSsqi4G++ehm9tlW8In0Ibg9ybN+6m2NKziLx/j93A
 ezTdBY208xEIoN8+kui3yBI7Lzget0d1iXxpKPV9GxZkINhQ/Rd1D/+FPoHCjxzYb8oe
 WbNJvU5m2j5EchTqQe0hAHzF5HzO5rKPrXS98yUAOm3xRzavybLrEXwJh9I+uZR//YMq
 s5aWszvhCPCL6GE9edxI2eosWVQ0yhCJ4NMgccWB85x6MCaHtaXiD6cvjxdsJknEGFkm
 EaWIRD46QTj7Wl5xBaHG0LDd8Ozv6Z7kFogJQsb/Yx4c6qzo9O3EU58dcMGQTD/Mlck1
 T/ww==
X-Gm-Message-State: APjAAAW/8a2x4BXP4xSQdqvysXbe2K1q3iQk73DKrDDkmbOl2vcnvdeJ
 mo68DSxRiptHaYJt7QSaGH1+2z02CnlOaE/TFIA=
X-Google-Smtp-Source: APXvYqyETAGRGUASd/Zvyv0tevg+8JN9N/4I/ThubeVLLrQQ4k+pgrBqa/C3rTkDIJAeR0puFFxXeiByqapJGvnBd8c=
X-Received: by 2002:adf:ee45:: with SMTP id w5mr61937773wro.352.1577672538521; 
 Sun, 29 Dec 2019 18:22:18 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:adf:ec90:0:0:0:0:0 with HTTP; Sun, 29 Dec 2019 18:22:18
 -0800 (PST)
From: Mr Moon David <peter.john00775@gmail.com>
Date: Mon, 30 Dec 2019 02:22:18 +0000
Message-ID: <CAEaVSjiqeYLyZ4ZsM2j3hoM5K3rDhj3VaBk+eW2zjxmaiiZzGw@mail.gmail.com>
Subject: Greetings
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191229_182220_012752_A8CD9A05 
X-CRM114-Status: UNSURE (  -0.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.0 (++++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (moon.david001[at]yahoo.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peter.john00775[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (peter.john00775[at]gmail.com)
 1.7 DEAR_SOMETHING         BODY: Contains 'Dear (something)'
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_HK_NAME_FM_MR_MRS    No description available.
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 1.0 PUMPDUMP               Pump-and-dump stock scam phrase
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
Reply-To: moon.david001@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Dear Sir/Madam,

I have investor that want to invest $6.8 Billion into a  company that
needs fund  for expansion only.He can not invest the money to new
Companies that want to start up but into Companies that has been
making good profits but needs funds for EXPANSION. He can only invest
in start up if the investment proposal is realistic. The investor is a
former Petroleum Minister.

His Area of concentrations are Real Estate, Biotech,Textiles ,
Information technology, Pharmaceuticals , Oil & Energy Industries,
Mining &Metals Industry, Management Consulting Industry ,Maritime
industry, Hospital & Health Care Industry, Consumer Services Industry,
International Trade and Development Industry ,Gambling & Casinos
Industry, Electrical/Electronic Manufacturing Industry, Insurance
Industry, Chemical industries, Marketing and Advertising Industry,
Leisure, Travel & Tourism Industry, Agriculture, Aviation, Retail,
Import and Export, Trade and development industry, Real Estate &
Construction Industry and any other viable investment opportunities.

If you recommend a Company to take loan or investment funds from from
my client the investor, me and you will be entitled to 5% of any
amount received by the Company from the investor but if you are taking
the fund directly as a company i will be entitled to 2.5% and you will
retain 2.5% as Global Finder's fee commission. There will be a face to
face meeting between the investor and the investee after signing (MOU)
the (AORI) should not be less than 3% per annul if it's loan or direct
project financing.

Look for a reliable Company that need funding and we can easily make
5% of the amount received from the investor but we need to maintain
absolute confidentiality in the transaction as the fund provider want
to remain silent, so you have to keep it highly confidential between
us.

I will need the company profile and the project summary of the company
that will need funding to present to my investor.

I look forward to hearing from you.
Mr. Moon David.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
