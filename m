Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80E6864BDB
	for <lists+kexec@lfdr.de>; Wed, 10 Jul 2019 20:05:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IYnphD42t2QN7DjHGJRR5aTLn5vPVU0cun7q3R82rLo=; b=PkSHwc+TrIsYmd
	708k71TwjmhIXljBRvezOcvbxSW9L44wOIEZDJquN9xgJv8RQ3iC0B254sgasZMAzU40xtVrsa8TW
	09tkZJITp9g5Q0PrVZb5Mj4KtN2s2MBsDtbWnMZYt6x45t9BfuyjaS8vyDFaxN2Aj6CWCrOCO4h5p
	BKfUc1i0KSuL388yTLdWcY8OQG1bJfb7l3WqJ2haNPRKOl819HYV8uMv0spTEIxaiSqOWV0KgFi5n
	ML8uM/kvLG18ynZN3ZhAA0F6ORG5gsKsbrMg072bYP63+7nK4njKkiDzNB+kOMMs1T5edcxAg5oVJ
	AKGXn/+gMQGExmUySpyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlGy7-0005dq-8y; Wed, 10 Jul 2019 18:05:27 +0000
Received: from smtp.duncanthrax.net ([2001:470:70c5:1111::170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlGy2-0005cr-Uk
 for kexec@lists.infradead.org; Wed, 10 Jul 2019 18:05:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=duncanthrax.net; s=dkim; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date;
 bh=/o03ahXTKD5doFWfLRDGGar0eMqb1GgLyukPhVaDNyY=; b=ap/J7TLPIXu3rCzQ3Bo+wiBkKy
 qwOcnrZ1+n8h2QOdjut7sd3wnJAnDdsrSDfXI+J0GacFYb0WiHg4M+7Q70jbE6KvJnqszfpKWoBac
 9v8yVMNMb+zQhxrpiQ2t7+xB0EN8sc8FKXVCkKYD7K26wgC1KNvIY3rxyYJNq946TauM=;
Received: from [134.3.44.134] (helo=t470p.stackframe.org)
 by smtp.eurescom.eu with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.86_2) (envelope-from <svens@stackframe.org>)
 id 1hlGy0-0007xF-22; Wed, 10 Jul 2019 20:05:20 +0200
Date: Wed, 10 Jul 2019 20:05:18 +0200
From: Sven Schnelle <svens@stackframe.org>
To: Christophe Leroy <christophe.leroy@c-s.fr>
Subject: Re: [PATCH v3 5/7] kexec_elf: remove elf_addr_to_cpu macro
Message-ID: <20190710180518.GA6343@t470p.stackframe.org>
References: <20190710142944.2774-1-svens@stackframe.org>
 <20190710142944.2774-6-svens@stackframe.org>
 <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49206784-009c-391b-5f9a-11e9b1de930b@c-s.fr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_110523_131636_CA7FB592 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linuxppc-dev@lists.ozlabs.org, deller@gmx.de, kexec@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Christophe,

On Wed, Jul 10, 2019 at 05:09:29PM +0200, Christophe Leroy wrote:
> =

> =

> Le 10/07/2019 =E0 16:29, Sven Schnelle a =E9crit=A0:
> > It had only one definition, so just use the function directly.
> =

> It had only one definition because it was for ppc64 only.
> But as far as I understand (at least from the name of the new file), you
> want it to be generic, don't you ? Therefore I get on 32 bits it would be
> elf32_to_cpu().

That brings up the question whether we need those endianess conversions. I =
would
assume that the ELF file has always the same endianess as the running kerne=
l. So
i think we could just drop them. What do you think?

Regards
Sven

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
