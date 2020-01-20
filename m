Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B45E1427F3
	for <lists+kexec@lfdr.de>; Mon, 20 Jan 2020 11:13:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oBiyQZZv/9Gi5pBEUg0VMVyOHe5C6mBLaGCnxjF6+m8=; b=DBmbJ+cNuNHsvI
	JQNwt0wx/OTzCnlUmJdFd6wYvLJIGAXf4m0bCpRyObnS9BgE9SIU3d9y3kE9A0m8GNf/pawlSREIJ
	EArUXhGr6mFDFtMLCwjh3C/VYEmngxoYmvw45XrhBf5XDM2Xm2jFq3hGHpdAgads25oYCU3IsQsRk
	xGMrY7+lJQTO0DlYP20VX+JisAYQNFeZXGY6940Kspfw5iMcU9f0Gj/crqDqjuq3cgoci10GaWGjA
	gGYNTaQQidg+HWhYpeXZweoH4NNQwhgE5jfe3bHaYApM5GHLDMPnsun3BNOHzUlLaaPpA21cTi/AP
	Lsb+8uVrI+lzlb+3kJTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itU3U-0000jU-IG; Mon, 20 Jan 2020 10:13:12 +0000
Received: from mail-io1-xd29.google.com ([2607:f8b0:4864:20::d29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itU3N-0000it-0F
 for kexec@lists.infradead.org; Mon, 20 Jan 2020 10:13:10 +0000
Received: by mail-io1-xd29.google.com with SMTP id t26so33102364ioi.13
 for <kexec@lists.infradead.org>; Mon, 20 Jan 2020 02:13:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=cY69PJaSmNBi8ZPrs+GOQSqa5xQWFDJTLhZ+giTJjj0=;
 b=DNHr7XXvnbEcGI96KwfLiLdIv4SwgVjdmfSuqX1NKPKS+asnb9lYIXYW70GyQIkF9G
 vpeUaej+Z2fGGTGzlO8YTrlGKjZCHcYLgfXOsRt5I/4RKqljs0/+tSy2JTcEQLqKkOqO
 fTKd4SVKbiJZI5RA3EMLjurbhLwyMZ/j6D+fNMY12HKa3ddJDYlDeyH1kyLgduNIhC7X
 fYc7iVS779JFNqub4M54GplQNcIP0YjygAUqls+864c5GOvcwTmYerPoCa4H/ecj17HP
 Y+CruN5Kce/sT6COgiZ/3Jvd6XN/hG2bI2ZUcqbVjw9HWcETt2m5T4tGC0Yi7fDEaiDu
 4fYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cY69PJaSmNBi8ZPrs+GOQSqa5xQWFDJTLhZ+giTJjj0=;
 b=teIItsF3RqpnOhjcZAEcNDYDhw8y1px+3n5OFy2cktVcF1NiIDQ2FNYu1In8jHvkVL
 ouRWcDWJetjMm3Mtryf985PcoZwZwOnBvAkS5/RAOECq37slxAhjQlTiiEZS+PrMoHZp
 6nNhboiY54NEBMDp6KFALVoTNTCrU5gIchxDrPwEphxWObX1n3iUroT47B4teuNq3FKu
 3QPH26TWAFI0truniplAOHSb0EZh8LKc/fvEdDZugvg3DTnJ3CeuIMTxRxwrvg6IqOl+
 54eM5+TkbJx09SDLlw+b13NWcouXh4Ul2n0B4ee7ltcAxscLtrSNg6zyH8B9QCWGzGeL
 o4qg==
X-Gm-Message-State: APjAAAUws44/KGO6NU1NiV1tcbjYSVYtWvvTK7VZrPrHokmixpHIDxQ5
 2n3TBGOErfVnbmqb6VP6cU/L2n5OWpqZlhQpvA==
X-Google-Smtp-Source: APXvYqxzPpOOQK3yidW64jaH0ceoh56xDH+AAF3/xNcdCzNeshR5Wcqccj20rb1dtbBSObi0TLgoj4GC4AByevHrEj4=
X-Received: by 2002:a6b:7e48:: with SMTP id k8mr36715863ioq.12.1579515183486; 
 Mon, 20 Jan 2020 02:13:03 -0800 (PST)
MIME-Version: 1.0
References: <1579487594-28889-1-git-send-email-kernelfans@gmail.com>
 <20200120072939.GD18451@dhcp22.suse.cz>
 <ee0f02ca-9710-eef0-00c1-4e08c049473a@redhat.com>
In-Reply-To: <ee0f02ca-9710-eef0-00c1-4e08c049473a@redhat.com>
From: Pingfan Liu <kernelfans@gmail.com>
Date: Mon, 20 Jan 2020 18:12:52 +0800
Message-ID: <CAFgQCTsz99SX_Deb2-Dgd1qjah9XViDZPswbFSCxvY42ua0_+Q@mail.gmail.com>
Subject: Re: [PATCHv2] mm/sparse: reset section's mem_map when fully
 deactivated
To: David Hildenbrand <david@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_021305_044364_8F6ADA28 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d29 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [kernelfans[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, Baoquan He <bhe@redhat.com>,
 Kexec Mailing List <kexec@lists.infradead.org>, Linux-MM <linux-mm@kvack.org>,
 Kazuhito Hagio <k-hagio@ab.jp.nec.com>, Qian Cai <cai@lca.pw>,
 Andrew Morton <akpm@linux-foundation.org>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Mon, Jan 20, 2020 at 5:03 PM David Hildenbrand <david@redhat.com> wrote:
>
[...]
> I think you dropped my
>
> Acked-by: David Hildenbrand <david@redhat.com>
>
Sorry to forget it.
Thanks for your kind review.

Regards,
Pingfan

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
