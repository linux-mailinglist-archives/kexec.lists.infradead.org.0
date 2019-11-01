Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49EF0EC5D2
	for <lists+kexec@lfdr.de>; Fri,  1 Nov 2019 16:46:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:MIME-Version:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kjrX58WmuQOw/uZ2NsoskpcrHv5QIwKWFoChA/bWUdw=; b=DGqH8cm4y3Q1pA
	0QKzicQ5LC/8ORHMZxpsTHDSsIFboP58o0JNRvzzYagu1gSgIaIGn6BCbdXSQFufpA+OdK2kgcyo4
	wDhAChJ7bExlPTrY8oM+EIxVjXSmpV1+gqjprlR7hlvA/eKdK09d3rKsdOVfmN2fhVQ/FK1UYK5qU
	yMD5oiaNU8iWECZW1WgxP1qQ/PILU80/rGfHU4K5B2gdzE96jGoh1gGALQ4Y82mAySY/OAoDSBZci
	qa/67N+CyV/zVlPoiZWwz2OoTTCR2ybAtBzasXsF17bFLavLfSMfLk5crYdapWlQtqUGwH8lDvB+R
	Jfny6kT2K9/W5IWyRQIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQZ7j-0002Li-KD; Fri, 01 Nov 2019 15:46:03 +0000
Received: from mail-il1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQZ7g-0002Kx-OZ
 for kexec@lists.infradead.org; Fri, 01 Nov 2019 15:46:01 +0000
Received: by mail-il1-x142.google.com with SMTP id j2so6915244ilc.10
 for <kexec@lists.infradead.org>; Fri, 01 Nov 2019 08:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:reply-to:from:date:message-id:subject:to;
 bh=jS5spAHkLQ6jXruZmR6Hfc0otf2ZvlnYa6I4swfa2tE=;
 b=ip8hUDGYFNToPf0JY7UoMhaMkZjQrWLeOX+MzfaAYR/5UdYgdkzNuj+elT7IhUiwrW
 vg68llvyNFWW0V7+FDdTXtT8gGRH6wwgSAQx/wW9sxbbqJM6ZKPDbuyEwbPuNai7n23S
 p4wBoTDDX51lIW0wyi0CJHTHyYRjRcDoCdLFkjQAWtRcgFPvESJULvYCsIGQL8e4Z5Ch
 XMeZVemnh9vk9kgSIZRectY0mgehpIkBY5QtqkxmYt1KrSVSsqURyFSSAMJkrPvU4pMk
 uXK5SCOLbLnY+h1+KHpIELANHD8AtSOp0hvYLAcR0EvxWKk739Fm/wfE8PMzsZ1+5IRS
 m7sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:reply-to:from:date:message-id
 :subject:to;
 bh=jS5spAHkLQ6jXruZmR6Hfc0otf2ZvlnYa6I4swfa2tE=;
 b=iYtPAIeMG2h68K5hTAsXw4RApTV9OqP1PTCzdDPyzb14lNj54PQE7ZOamozFGEKld/
 RYZH8MHjnzmxqve/tOw5mOt0rKdhxRyzj+apuDlTvWXzjmYUtEpsLXIfK4FQ7Z4y4Pcp
 GhlcbqSpNf+PnXs9y8ccxqAU8XNF5omWoQFkTABNqxhJUM+rycHsBedJUXxERBWgqBY4
 K46Tj5VT0JzrwV06Egy3azGwsnVWwNaaxNYEeoLjF0ClhGOAfgCaNmhPCW2x9oaqWPut
 rZynH88rBace15P0E9BcYGDh/llHN7XDDG4gKKTiEyye6mXOTtCvhV2YyLZUzJPeU/gl
 bFzg==
X-Gm-Message-State: APjAAAWoUCEEH2gnC4tDpADcv5Hcw4nyzKuYg9Oo5xcQKZOPoHrIxxrW
 RY67GWNn/9svSBAnqWU+HABywtX8tuiDkazwKw==
X-Google-Smtp-Source: APXvYqzmb+kqsWIQsk6AJPjd1Xdw4IxGP9KVFYjDzvesSiQwJul+QvWkXshctcxTVqvl0OT/J+Z+hjyBFxLIOOtPKKs=
X-Received: by 2002:a92:5d49:: with SMTP id r70mr13391942ilb.257.1572623159576; 
 Fri, 01 Nov 2019 08:45:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:7749:0:0:0:0:0 with HTTP;
 Fri, 1 Nov 2019 08:45:59 -0700 (PDT)
From: "Mary Coster,
 I.M.F director-Benin" <info.zennitbankplcnigerian@gmail.com>
Date: Fri, 1 Nov 2019 16:45:59 +0100
Message-ID: <CABHzvrmwJ002eiEaiK=88=5hPqQ1TNUwHHMm-tiw4Q6JPGw_bg@mail.gmail.com>
Subject: Contact Money Gram international service-Benin to receive your
 payment funds US$2.500,000 Million
To: undisclosed-recipients:;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_084600_799872_7DEF4ED1 
X-CRM114-Status: UNSURE (  -1.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.1 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (info.zennitbankplcnigerian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit (moneygram.1820[at]outlook.fr)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 LOTS_OF_MONEY          Huge... sums of money
 1.0 FREEMAIL_REPLYTO       Reply-To/From or Reply-To/body contain
 different freemails
 2.0 ADVANCE_FEE_2_NEW_MONEY Advance Fee fraud and lots of money
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

Attn Dear.
Contact Money Gram international service-Benin to receive your payment
funds US$2.500,000 Million approved this morning through the UN
payment settlement organization.
Contact Person, Mr. John Dave.
Official Director.Money Gram-Benin
Email: moneygram.1820@outlook.fr
Telephone +229 62619517
Once you get intouch with Mr. John Dave, Money Gram Director, send to
him your address including your phone numbers. He will be sending the
transfer to you  $5000.00 USD daily until you received your complete
payment $2.5m from the office.
Note,I have paid the whole service fees for you but only small money
you been required to send to this office is $23.00 only via Money Gram
transfer.
God bless
Mary Coster, I.M.F director-Benin
m.coster@aol.com

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
