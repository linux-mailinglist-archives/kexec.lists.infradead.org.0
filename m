Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4917FE1C6
	for <lists+kexec@lfdr.de>; Fri, 15 Nov 2019 16:49:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nT+LD84XFmBg6jPTZg11vcC8yk8tni4SRnvH1QBsHGs=; b=n+8NbBONQdQ3PH
	05CREksa1i5Jrt1XCNY1DEuDAhkQ1zB0zBcZ+R1IcQV2ZFwj3m3uIgQ04u5hyb4EmJr/UzmS6ihSW
	qRIPw9PW72zwK1sI7PvK7FPXFNwz+BplsmqGn0QT/jgscZWHN9zJTToETmclMe+yYGxFJGETlEdHA
	aVGYZiRE21Oxm6CDVgCGTTjoEuG1+/3ZNh6P9gGR1zBFXtoGz+pWdiMQuv8ngRuMkJZbDAesowexP
	UVHjbBMVoAcYpNx8FnR6MfkV0mii8uz0XkTGKhBonJkTwZ0qOmy7/kiZ5hI0aoU9aOx++57biLdhB
	neG83UpjJjO30D3Elirw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVdqT-0007V6-9m; Fri, 15 Nov 2019 15:49:13 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVdqQ-0007Uh-S9
 for kexec@lists.infradead.org; Fri, 15 Nov 2019 15:49:12 +0000
Received: by mail-io1-xd41.google.com with SMTP id s3so10928751ioe.3
 for <kexec@lists.infradead.org>; Fri, 15 Nov 2019 07:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=ns7AzA2ritlf+w4n7iUYgEbgvytBVcwHp7X09TbM7dQVcpCjf0Kx2Hne3zU63IYviN
 sHB4ktEFN8MehxLEOsDUS2gv07gWQzC4wr1Fr0q9Ugj/5GVxM4rTAhKlTpndSJDFRm1J
 gQ9QNl+t101wS8D36evAd2oAhPTOyesmPvWLTS/R7H/3kY32kazycuTQH7l/v9Pd3PLW
 lwczc26LaO9TYRDDmbgKBK5VdwJZbAfLETbsICLqQ6tSkXXXGNEPUiRvCQ5YrC248fFI
 gS448Ddr9BE319ej0a8vz+sDlvbKiFtgh/s6OjNn4syV99Hva+J7phxi09WJQJ3mxKl6
 FQGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=X5NAAOrJ3bS32ihsXavVCESX6DNfXdWEE7aVqtLVIHM=;
 b=NpQFQon4Os3G1lkhFSSyCdC44lKx9+LYTeyZw6WSa3k6rfnNuZhmAujgt2ya9UqxIY
 Wk0WgMmvnV8xwVEmf1hHm8mBZtLWFh6Y9Z6E9wf3onzVl9aIr4kqR11vhCyJaBJplVr1
 8wGlzgpwJdZFJHJ17HQD55CB0t5QFW5ipqp1aZyfaFOMUPkQDwoy6EFyNN6TQImsxMG3
 /9PeHGEBLMm0AEtS7Rp7KiCrC+LemYCQpn2iH9IOazXRDwa50HaWqQLD5AzN5SePirCC
 H1EdMti9wa2aRfz8i9IAJxtXt7RccYEVVAqs78xDVdhankZW36D/smBZHiOuKf5Qvu0s
 D5RQ==
X-Gm-Message-State: APjAAAXqUqPJ7AnFUILaLBTU28So9knGb5IQqgG31XftmticAvb2L2mO
 /p9RZfuKxZh+EueU4WzoFTYzk0PFUbizdWniIA==
X-Google-Smtp-Source: APXvYqzuqyaXCnn7Wuf7CvnQcijtEVMZwzsEH+at90dWqG4AgXuyFoMKTSsAXEAXOVsx8fo6rWt3WKOl/qx3gV2G2i0=
X-Received: by 2002:a05:6638:950:: with SMTP id
 f16mr1249670jad.107.1573832948753; 
 Fri, 15 Nov 2019 07:49:08 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a02:7749:0:0:0:0:0 with HTTP; Fri, 15 Nov 2019 07:49:07
 -0800 (PST)
From: "Ms.Mary Coster" <info.zennitbankplcnigerian@gmail.com>
Date: Fri, 15 Nov 2019 16:49:07 +0100
Message-ID: <CABHzvrmypb4iEkfX0yr_sS+ZzXejHbQoznfDnH3aVoOB9wq8jA@mail.gmail.com>
Subject: Goodnews, I have deposited your transfer total amount US$4.8million
 Dollars with Money Gram this morning. we agreed you will be receiving it
 $5000.00 daily.
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_074910_913111_134A3716 
X-CRM114-Status: UNSURE (  -2.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (moneygram.1820[at]outlook.fr)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (info.zennitbankplcnigerian[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 0.0 FILL_THIS_FORM         Fill in a form with personal information
 2.0 FILL_THIS_FORM_LONG    Fill in a form with personal information
 0.3 MONEY_FORM             Lots of money if you fill out a form
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
Reply-To: moneygram.1820@outlook.fr
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Attn, Dear
Goodnews, I have deposited your transfer total amount US$4.8million
Dollars with Money Gram this morning. we agreed you will be receiving
it $5000.00 daily.
Contact Mr. John Dave Director, Money Gram to pick up your first Money
Gram payment $5000.00 today.
Contact Person; Mr. John Dave Director, Money Gram,International
Remittance-Benin
Email; moneygram.1820@outlook.fr
Telephone; +229 62619517
Please re-confirm your address to him once again such as listed below.
1.Your Full Name..............................
2.Address.........................
3.Country....................
4.Sex.........................................
5.Your telephone numbers..........................
6. Copy of your ID...........................
This is to avoid sending your funds to wrong person, He is waiting to
hear from you urgent today.
Let me know once you pick up your transfer $5000.00 today.
Finally, Note I have paid for the service fees, but only money will
send to him is $90.00 transfer fee before you can pick up the transfer
today.
Ask, Mr. John Dave Director, Money Gram to give you direction where to
send your transfer fee $90.00 only to Him Immediately so that you can
pick up $5000.00 us dollars today.
Thanks for undrstanding.
Mary Coster
m.coster@aol.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
