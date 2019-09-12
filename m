Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38AF7B0F13
	for <lists+kexec@lfdr.de>; Thu, 12 Sep 2019 14:48:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=deR+5tIIuQX656zAcY9hb8NarAanzA28ZqOxuXki4B0=; b=s3mYsWCehQpQZZ
	1JfykwO3pxCjOJdOuVkY7pnAK4Lzj+ejauophBNQFb9ItCvj83eN8mS1k+bV6Qdfbe69N0dTaYmHY
	7+mtux+o0PPvWcciUSBNt+mS+U6NagCT8Xp0NTeauqnkryIxze3/xp1bv+Wdm6gLaopXZkq9vhAc0
	1AuPBdCXDG5uv2rjCk/GwC834GddNyiJf5xqX9uwYgAvoctXCiFK3AMR5pyPq7xP1oJ+V7bVu2TkF
	BeLDddUvoP1V7eqJJjaChgT1EgIC3dv7YLbOW6FGibjbCSis6vM9RicJdg9Z+tWEojTfy9W62kTK9
	PLCGSmwT6HhkA4akWX2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8OWh-0006tz-Ql; Thu, 12 Sep 2019 12:48:43 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8OWd-0006tf-Gp
 for kexec@lists.infradead.org; Thu, 12 Sep 2019 12:48:40 +0000
Received: by mail-wm1-x342.google.com with SMTP id n10so7506960wmj.0
 for <kexec@lists.infradead.org>; Thu, 12 Sep 2019 05:48:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=prospectknight-com.20150623.gappssmtp.com; s=20150623;
 h=date:to:from:subject:message-id:mime-version;
 bh=2PYu/zvZFZ5VBzeOQWTqemWBJyekar1nVwWhtcrSnsU=;
 b=cj5HhtpArAKHa1/wgSwx7gXcMfnTbTaa2xWCLa2/tATf9UxPVlyY2y8Tq0T//plhNY
 SdEpHqmrSJ0PUMLFr1Uz0rBgj11a/B+d9fVF4bYu0l0wPYJjslbs/yPyUcOf/iR9NsDy
 hAStF51flT17v+1di8V/ZPrEf4xeEmC1RqerMmTilQMcU0Qiw21ez/sVwWRN9Fx3P2yS
 EtRemY4Tu1KK0kQBdgAWTBMZpGubYevextvE0JIxhP2907Z42eu+wEkQCjnCjOUyJLC4
 v88KZeyalE8M97Hdq/j6960SmKVUy2S2uWQVkRGdLHyw6Js6SEgrcD1dfLGk/enZy+1s
 ORcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:to:from:subject:message-id:mime-version;
 bh=2PYu/zvZFZ5VBzeOQWTqemWBJyekar1nVwWhtcrSnsU=;
 b=WjeDi5GunaL1ZBpMhRhxtaLgz3+Jx0y0NL9JAE874fLv/GSY2u3jrT64tIpIQaOymp
 1ZIlEAIEx35XiGS1te8Fm3iDnvqXKXT6UTxCdFdzcT6kLxqy/DsIeq33ymWlklWK0xra
 EplSHNWw0hiV2vW8XXTMPaYZFZHRvIIvciifXoF4GzRHSsr2Btngb1irvFohyFw8qyoZ
 wguOmSeQlobGRwywhwKD/OVlbHJEHcf9xWbBAzMN8sMhKCfGvHfu9SKWycZb3L+sQ8HC
 g4OKDCbbood4z3GBlIBmKmzT5nAg72UQD4QkAsHYdrkBh/6Kd4tbW3PV7+A4946WH7Tt
 1uUQ==
X-Gm-Message-State: APjAAAWQTbsYVwvFm9CTlbNss2IrbN1rXxMBWm5gIOx6LFVNfpt2OCxM
 1fvE11hOtGph1Y/TNGbF2LU1MFCx85A=
X-Google-Smtp-Source: APXvYqyz984tMaQuCQrDblDMi2SL8w1WvaDXhLeaCPvZLGvwjgXKxme69WQbZ3fGk8cebJdwCWsLeg==
X-Received: by 2002:a1c:7902:: with SMTP id l2mr2439702wme.55.1568292508018;
 Thu, 12 Sep 2019 05:48:28 -0700 (PDT)
Received: from prospectknight.com (133.76.189.35.bc.googleusercontent.com.
 [35.189.76.133])
 by smtp.gmail.com with ESMTPSA id w125sm12324145wmg.32.2019.09.12.05.48.27
 for <kexec@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 12 Sep 2019 05:48:27 -0700 (PDT)
Date: Thu, 12 Sep 2019 12:48:25 +0000
To: kexec@lists.infradead.org
From: Prospect Knight <hello@prospectknight.com>
Subject: Thanks for contacting Prospect Knight
Message-ID: <55ded30c0efd26c8aee324066afbee30@prospectknight.com>
X-Mailer: PHPMailer 5.2.22 (https://github.com/PHPMailer/PHPMailer)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_054839_699140_CE5C55E7 
X-CRM114-Status: UNSURE (   5.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi,

Thanks so much for getting in touch! 

One of our family will be in touch with you soon - if you want to learn more about us in the meantime, why not take a look at our LinkedIn or Instagram pages.


PK

--
This e-mail was sent from a contact form on ProspectKnight.com


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
