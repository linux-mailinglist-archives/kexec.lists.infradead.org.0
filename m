Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E044BF31D
	for <lists+kexec@lfdr.de>; Thu, 26 Sep 2019 14:37:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XupZnB//TENfEW+zRLSbUfKTY8IHHNPCxqBDfKWx6kM=; b=B1CTb9JSxL/qc9
	x6SI+DORxHlKyn0Zb1MNdUbnNGwGjHhS6wOU5azMwAlgPRwcQoWqwBrfvaIswSskX2GkKYHaeUJJI
	5SD7S2iMkfWeMU6ikAqCgM5e/1VFKwA163XEHWaEzAx1flB7IkuKWG0RY4zv9hjqhx12/ioX6VpL2
	S3+xwm4Z7gET+hTmv5IznaVBk9WATplQh7is8S/rcR4xygDy5iu3jTepuMsUnevFWE3aG23bhdGtY
	okuGx9CZqY+7hAhvjZjBocRVFUbohR+t2KCvDS31vqzBDguAMJzbcc4/BzYlbZ4cqNImmLf49istL
	Rpvf2Gx4t3ltnRKrWPjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDT1f-00022W-9D; Thu, 26 Sep 2019 12:37:39 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDT1Z-00022E-75
 for kexec@lists.infradead.org; Thu, 26 Sep 2019 12:37:34 +0000
Received: by mail-io1-xd41.google.com with SMTP id q1so6154648ion.1
 for <kexec@lists.infradead.org>; Thu, 26 Sep 2019 05:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=dppxQfTlsqJSbsd1/tVdurIwqxHyKlt/fNGdH7xVybHK4tkMKFXUkxhXS5y7nTk8MF
 YfHHuORwTMVXkAZCXvEiF3sLvfUw7kHFZRCLyYOLkS+IposWQOyFNA2TmSjJgoJpbeZI
 KjcVX34OoUawR5N30qDVdqkByHB0BwFxrmkbS4P+YSqQ9CbWFcp7nt9eLk+5M6qH9gGU
 k38+07WRLRXB74M8twuSjERLUT5ry9fvM09VH3n6eiF7k0GtODud3hpOeYUYgmQnQ8JK
 XkYJEZa3VA4Yts7QUOffwto+tCfYeZq3uPO4schMMGmYntfgh2mOvkeuxjLog3qRJCZ5
 EqLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=4kdRQh2RBnKVNiw/sK5zF5fAJlJg/+xzw8chsJkNqc4=;
 b=BoY5DS/1KltAHPmePZjnWealfSzYYzpgpR8b+UYXTCBp0OT5zmig/es8RBJ+O0iPuT
 fJ38ocyJhPcTg9JIQYHVu0n67AGXtL22Z3iBZxNFZAXU/JIXB6d5trMSjGLkgcXJwZE+
 eLWPWHzpujBPfFDHc+yWYOH0oc+38JCyMns4G5olGJIdlltHp5NKPOPAgguL/ueERybZ
 wZFcnwJM/1abPn/qyL5GkbxE7n6ojSVxvprkiHqqGSqIK9//HHYIivzMS6APVIVEdT6F
 lQsT2+w33xLDsuXSp+Vz3hHZ/vGeyYeZb+4hBeOHDPeUMRGqJqKq8UrDfOppPi0YsfSK
 GTtA==
X-Gm-Message-State: APjAAAWPzhHYVGO1lIUVmYVvi0ewQQvI1OSLounPKpNZOC869MeA2AQ4
 Pawvl7xYsMVIH5HHvHOV40aMFvmNQf60/ZB9pQ==
X-Google-Smtp-Source: APXvYqzy8rJBrEsW/UQ1KaLVbh/dMwKB/5QCDQDGl2bG3hjz3YBHklTTkpRzVag/ZDwvTdxuwWf3qSRA93UWCr4EAAA=
X-Received: by 2002:a92:4891:: with SMTP id j17mr2062209ilg.35.1569501452388; 
 Thu, 26 Sep 2019 05:37:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:242f:0:0:0:0:0 with HTTP; Thu, 26 Sep 2019 05:37:31
 -0700 (PDT)
From: "Dr.JOHN DAVIDSON Dir IMF Benin." <info.zennitbankplcnigerian@gmail.com>
Date: Thu, 26 Sep 2019 13:37:31 +0100
Message-ID: <CABHzvrn9m8fqEgaLuYChD2wyybPLDTzD2QgPfaRDgxEa8FhVGg@mail.gmail.com>
Subject: CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
 US$16.5million Dollars deposited this morning,
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_053733_267409_8167E50D 
X-CRM114-Status: UNSURE (  -3.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.1 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (info.zennitbankplcnigerian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (jpmorganchasebank.ny13[at]yahoo.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain 0.0 LOTS_OF_MONEY          Huge... sums of money
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
Reply-To: jpmorganchasebank.ny13@yahoo.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

ATTN,DEAR
CONTACT,JP Morgan Chase Bank NY USA for your funds transfer
US$16.5million Dollars deposited this morning,
Director, MS.Linda B. Bammann
The Bank is waiting to hear from you before transfer release to your
bank. This is to avoid any hitch problems. CONTACT this bank once to
receive your transfer today.
Director, MS.Linda B. Bammann
Emails/ jpmorganchasebank.ny13@yahoo.com
Telephone. (603) 636-4063

Note,you can only text JP Morgan Chase Bank Ny USA Director, MS.Linda B. Bammann
On her telephone No#. She refuse to receive calls due to numerous
conversations from outside of the Country, So you had done well text
her on the given phone number or email. Finally For your
informations,I have paid the related transaction service fees for
you,such as Deposit and confirmations charges, so small money you been
required to pay is your funds transfer fees, sum of $90.00.only to
enable the bank complete transfer to your bank account immediately.
God bless you,
Dr.JOHN DAVIDSON
Dir IMF Benin.

Chase Bank is considered as one of the biggest and leading service provider
in the United States. The bank is a top listed national bank located in
Manhattan New York City. It is also one of the most trusted commercial and
consumer banking services on the planet.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
