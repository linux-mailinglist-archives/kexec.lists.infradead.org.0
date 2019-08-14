Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F078DA7F
	for <lists+kexec@lfdr.de>; Wed, 14 Aug 2019 19:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LKGI9KSeM5F26dFYzt7rx9oVA0WY3SUQmcXa73+WnoQ=; b=YmMlAw1eq+tryO
	Mav5FABTcCUcQvK2FBNzoT3LXZOfQ/YFKVuwvRy8IUFwqlWf59FL4lYOdmZ7vPFSb+E3lxW+4Yoar
	hRrwOlElRw3jrBFCChOxbII34/5zJEcdIEWRRkxSpRRcD3RMoGAkBkO2zbv3SgzHq+eVBmL0ROeXK
	6lsWArrbDj0adMVhhEzd1xwHGZLZTU94zc7YRu2GOSFI32BsAT/Zz9+XLMAT4mFJ9FyvcGY6AO96v
	d32TR0RB7op5H1UFqE/TKFDu2oC/yDum4/+TWIh74Zx7leZyI5SUOiL4lu5Q9DDr46SVYuPf7UfVN
	iQCN+l5YC/7wEBGq6+lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxwur-0003Qe-Rm; Wed, 14 Aug 2019 17:18:30 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxwuj-0003Pz-L2
 for kexec@lists.infradead.org; Wed, 14 Aug 2019 17:18:22 +0000
Received: by mail-oi1-x235.google.com with SMTP id p124so4826298oig.5
 for <kexec@lists.infradead.org>; Wed, 14 Aug 2019 10:18:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LRQCsPcTpX5yRUIeFvdSARBVTlIiAlejL67+Yf8xjVg=;
 b=i+RJ4YZ15TO+HN8duwbWS743QimszN9Wm8pGxdOfNKTpNfk/bLHgeUyMR2laUaSwNC
 jkH92f8hGxvou8/kRTOKuzkFwgOkSEPym8fJ9uVwPtFQLIo+MRHf8U10FEAQTU65YBLG
 mQrh+u6/r0av9IScMa02QDnTBiKrdAZbS3wJdgiL4XOn4GhgziP4smrvoOgnL8FIvQ83
 quHr9xVJbWaomkXQht1sYMrPA/wK5XtvV2BS2lAo9vBWhx6JVX0KdI8b6y++/aT/1Frx
 e3B6mzLvuE0aH/8n4qB04UlDXcVbAcqNRv3fr54uvuFKYcP7eacbyCM2r14L+ssvjJYm
 ZecQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LRQCsPcTpX5yRUIeFvdSARBVTlIiAlejL67+Yf8xjVg=;
 b=JYJYksgThBhMyXyAkGJEh0D4ftAjV6fbp+WLP8V+6GOQ/Mb0fdKYJzl0Dj0J1VS0E4
 vZo1SKOs+GWiMEH6zTDH8spQf7RN4ccwdLBoVsbZ+9hN2nxy6HYeh0kj5SWEOAU4W7k4
 hh/JTEsFGpqpIyxrOoNSU6U5WcQfvUVcrwwPYl5nQTOqhua/HMmsMQRRTHyEbcuf1YDW
 oTIaQ5ewWWIrUAYhNEBlnSL7heAgk2lJb17rpfErDeNGbP/g9rNZuBU5Cauu3+BTDhfd
 D9d5VrPr8z6OSJHKrHhiiaXwxaHP8LzduFLyh7s08m/5Y4DauxA2nMVkVHyojPZpg7mb
 XEdQ==
X-Gm-Message-State: APjAAAXwHhMq9BJ+XsU9aOUdp2waP46YPeqf9oLypugzVkZYawVy3urm
 PZ3mZ50FPaUK9ci6KBvg3f500AjMLEzKbynSC452eg==
X-Google-Smtp-Source: APXvYqxO6hrvW6O3ywX1sNo7cI2Ev1FZZfK/oM5JhFKND6LvgRn/TFsa/h0pFjgEsTxR/Ax/nKGU78JXDTSLCAv4Igs=
X-Received: by 2002:a02:cc8f:: with SMTP id s15mr395071jap.53.1565803098994;
 Wed, 14 Aug 2019 10:18:18 -0700 (PDT)
MIME-Version: 1.0
References: <20190813192126.122370-1-matthewgarrett@google.com>
 <20190813192126.122370-4-matthewgarrett@google.com>
 <20190814052359.GA10664@dhcp-128-65.nay.redhat.com>
In-Reply-To: <20190814052359.GA10664@dhcp-128-65.nay.redhat.com>
From: Matthew Garrett <mjg59@google.com>
Date: Wed, 14 Aug 2019 10:18:07 -0700
Message-ID: <CACdnJuuG8vy37KaoXHU-bzr-VLEwnUWWiCH_zKWuvYdGDDAV5A@mail.gmail.com>
Subject: Re: [PATCH 3/6] Avoid build warning when !CONFIG_KEXEC_SIG
To: Dave Young <dyoung@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_101821_721950_00DD39B3 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.2 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:235 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Jiri Bohac <jbohac@suse.cz>,
 LSM List <linux-security-module@vger.kernel.org>,
 kexec devel list <kexec@lists.infradead.org>, James Morris <jmorris@namei.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 10:24 PM Dave Young <dyoung@redhat.com> wrote:

> I can not get the whole thread, also not sure which tree it should
> apply.

This should be against -next.

> Also I think it should be good to split the preparation piece of kexec
> and send them separately.  Since it is improve the signature
> verification logic, they do not necessarily depend on the lockdown
> series.

Sorry, which preparation piece? There shouldn't be any logic change in
this patch.

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
