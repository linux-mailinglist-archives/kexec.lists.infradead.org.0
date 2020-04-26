Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 357061B8C8A
	for <lists+kexec@lfdr.de>; Sun, 26 Apr 2020 07:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=d+MyHOfLBTMCkhoFwS++a5wyj1lPhaViJ930pi6gQWU=; b=mJ/
	3+CqFB6Bziqg9s1onPXbSGqpxoSBsGrELagb48DkdzNMWxk3+u12bM8b8t7oQlg9Cf2QVxd47b8Ef
	3s3Ed0Umryvsh93YXhCs3lGnvNEMsvtoZ4lS5bhf/5He8MeL59E7I18Se7/4v0ey/EbeZPSVvG4BR
	W8zhSFxRMr47wQCON9O3jM+4V3hksEkD+wno2GcWJeFNdoNHYC9GawrRaR5g8bn0CPlPvNR4lj/YB
	Caw5UHHNvuL+opaP7HBHzcDbTpDXfW18mxbYquyYefKKhqXsqOUbsxxGZXnGy7/PUoNcAFl53+DuZ
	kCPxw+54a1SdUxk2nPv5CRC8KcXlh8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSZki-0000wn-JL; Sun, 26 Apr 2020 05:22:52 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSZkd-0000vU-7C
 for kexec@lists.infradead.org; Sun, 26 Apr 2020 05:22:48 +0000
Received: by mail-ed1-x542.google.com with SMTP id p16so10858855edm.10
 for <kexec@lists.infradead.org>; Sat, 25 Apr 2020 22:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=FG+83EjRJ8aMk7HX2WPBQkMaJ3j464DQcPky2SCHdnw=;
 b=iShqYK+ruXBlrJmU3c0GZPEUxrgrkZw9yfJilFiHwZiy8xSnsAnngxgLA6wrMesZit
 lehb0FDe5ibLrhJ/cA8HIRX6sW7EtuujCk9+2iIKie/3xFf5KrZbxcJqDIR3Fh8oqECs
 /uJ0tFXtVYe9qmovPVYoTMp84ClAmDlqhGPifokbKOaU5aoZ2jaepw8tUjzESb9w7gQO
 /pTlPyvVCITpeC+0YjYbbw2QByG7tZdojPwrt53HL3xJKHURl7KX4LLxVHMv4WWKvnUy
 yh1GeL7BcqB7HW2h6ZSfLcgDO4M7MmVaePSqWu9rJ7vliVPZ5LUc7ib6asJDC4cKqPHA
 m4DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=FG+83EjRJ8aMk7HX2WPBQkMaJ3j464DQcPky2SCHdnw=;
 b=cxYq5/ZfU5anye/NzQa9AopMjkrkmyurncvVNZ+ThutV17tXYw9e1IfvY3Z5321OeG
 XcBXj9iwtdtkyp5f11Q254sNlLqeE1RtVc4oC+ar6IxsXDfCM1sHGzPE/voymk6LyPE7
 1cEdeWsLpbgNicz+UIg4BwzKnjyT3+F4k+qEKVzY8ZwOQG/d3z6vxEjDTenhZna43nvx
 p1h1RlzbujWdyY4km+c0o9PcazeCEB417ASWLggg2GcLN70byrNVYioFEU3eL/rc90Ww
 tAOkAr4bbK/0EBPDnurPH4YFcdTUV/POfUrkt4GbDDzmo5JGuTF3+I902k8oOjVA8Liu
 A17A==
X-Gm-Message-State: AGi0PuaCjlcnYV/VaUPODaWeSj71YkHYD6HDBmZshddEkfizIXn0LwC2
 RWpte/f1SBiRw0R9sDHlzMG5R5ErRIDDHqcOeHQ=
X-Google-Smtp-Source: APiQypLutclPtZ7SWydO/EO91KZnvhSb3Ce2OqK2lEfxa/deEhezvYDnbUQ9ypuxFR2GdNDv3ratebKumRXaPxyRb3s=
X-Received: by 2002:a50:e8c7:: with SMTP id l7mr13525405edn.309.1587878565204; 
 Sat, 25 Apr 2020 22:22:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a50:49d:0:0:0:0:0 with HTTP;
 Sat, 25 Apr 2020 22:22:44 -0700 (PDT)
From: nath ogu <nathogu@gmail.com>
Date: Sun, 26 Apr 2020 06:22:44 +0100
Message-ID: <CAOQx-6QEx7q-4_dRuc_6sKwvXw-tQvKuQ66+5Z03qmjVD_-GWg@mail.gmail.com>
Subject: urgent and important
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_222247_260998_F291779E 
X-CRM114-Status: SPAM  (  -7.18  )
X-Spam-Score: 1.5 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [nathogu[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.9 URG_BIZ                BODY: Contains urgent matter
 0.7 MILLION_HUNDRED        BODY: Million "One to Nine" Hundred
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 LOTS_OF_MONEY          Huge... sums of money
 0.0 T_SHARE_50_50          Share the money 50/50
 0.0 T_MONEY_PERCENT        X% of a lot of money for you
 0.0 T_FILL_THIS_FORM_SHORT Fill in a short form with personal
 information
 0.0 MONEY_FRAUD_8          Lots of money and very many fraud phrases
 0.0 MONEY_FORM_SHORT       Lots of money if you fill out a short form
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

My Good Friend,


I am sorry to encroach into your privacy in this manner, I found your
email contact in the Trade Center Chambers of Commerce directory here
in Nairobi Kenya. Firstly I would like to introduce my self, I am
nath ogu, I work with the Ministry of Energy and Petroleum of NAIROBI
KENYA.


With due respect and regards, I have decided to contact you regarding
a contract awarded by the Government of Kenya to a foreign firm at
year 2017 regarding KAMBURU POWER STATION that currently generates
820mw of Hydro power  Worth US$ 35,670,000.00 (THIRTY FIVE MILLION SIX
HUNDRED AND SEVENTY THOUSAND U.S DOLLARS ONLY). The actual contract
amount was US$25,000.000.00 but I used my position in the government
to Over Invoiced the contract with the over invoiced amount of
US$10,670.000.00 (Ten Million Six Hundred and Seventy Thousand U.S
Dollars )Only, since the contract has been concluded and the
contractor being paid it now remains the over invoiced amount lying
down at Bank of Africa unclaimed here in Nairobi Kenya.


Please, I want to use your bank name and company to claim this over
invoiced amount of US$10,670.000.00 so that the money will be
transferred into your nominated bank account then we will both share
the money together, you will take 50% of the money for your help in
claiming the over invoiced amount while I will take 40% then we will
use 10% to offset any expenses we incurred during the process of the
transaction.

If you are interested then send me to your full details, BANK NAME,
COMPANY NAME, TELEPHONE, ADDRESS, so that I can use it to process the
approval  payment of the over invoiced money from Bank of Africa here
to your nominated bank account. Please because of my position in the
government of Kenya I will like you to keep this transaction
confidential and if you are not interested just forget about the
transaction but if you are interested contact me with this my
official. email address  nathogu@gmail.com


NOTE. I want to inform you that the transaction is risk free because I
will obtain all the necessary approval of the payment from our
government and Bank of Africa which I will forward to you for your
record. Also your area of specialization is not a hindrance to the
successful execution of this transaction .


I will be waiting for your urgent response.


Thanks for your cooperation and may God bless you and family


Yours faithfully


Mr  nath ogu

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
