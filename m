Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDD31A5392
	for <lists+kexec@lfdr.de>; Sat, 11 Apr 2020 21:44:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H4iBpbokn1nk29w6ge38QNSbyi1OgXyQlnLulQBvc88=; b=pJoPNaQqwxO6eE
	5HJGwUOaF7KlLDyLpz7kd9xBdTddeQN/4ao8BpUyFadg19du1DOSXHyahd0rnzx3/RW0MkQGjmipK
	nZsBHNxaYEpK06KNzM8WdwQbJQoZp+dfUF3M6tsv2YZpt4O4CToBySHBWwWWa3sJtsAGI7jr52543
	ee4C152/s6zDYJ+ihzXX7W4rGEjJvHP9PiD7x0qSEJ7YSJ4sw5NaHDGHMnOPoYHQ1bvm8FGJ+E7w3
	r9pUsWTMvcMGTqPWAVXqZhSqmv0V5HvMDX0A9Z8YhgUncI8vx4aCUupgcFUTFAMUBEfUOki5mRT+6
	YNWto/gZSm/mDBUdu08A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNM3I-0002zt-9v; Sat, 11 Apr 2020 19:44:28 +0000
Received: from outgoing-auth-1.mit.edu ([18.9.28.11] helo=outgoing.mit.edu)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNM3B-0002zG-Fq
 for kexec@lists.infradead.org; Sat, 11 Apr 2020 19:44:22 +0000
Received: from callcc.thunk.org (pool-72-93-95-157.bstnma.fios.verizon.net
 [72.93.95.157]) (authenticated bits=0)
 (User authenticated as tytso@ATHENA.MIT.EDU)
 by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 03BJhp5B029461
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Sat, 11 Apr 2020 15:43:52 -0400
Received: by callcc.thunk.org (Postfix, from userid 15806)
 id 9189742013D; Sat, 11 Apr 2020 15:43:51 -0400 (EDT)
Date: Sat, 11 Apr 2020 15:43:51 -0400
From: "Theodore Y. Ts'o" <tytso@mit.edu>
To: Dave Young <dyoung@redhat.com>
Subject: Re: [GIT PULL 0/9] EFI fixes for v5.7-rc
Message-ID: <20200411194351.GQ45598@mit.edu>
References: <20200409130434.6736-1-ardb@kernel.org>
 <20200409190109.GB45598@mit.edu>
 <CAMj1kXGiA3PAybR7r9tatL7WV5iU7B1OQxQok3d-JmRnhX1TnA@mail.gmail.com>
 <20200409201632.GC45598@mit.edu>
 <CAMj1kXFqKGSqm_y+ht4mmmu10TrhSyiTG8V3PxRYGodpZ=xNFQ@mail.gmail.com>
 <20200409235716.GF45598@mit.edu>
 <CAMj1kXH4VtNcJugpG_UR10ewGiOApTiw=C3FsuyAQQyg67Q8Aw@mail.gmail.com>
 <20200410135442.GA6772@dhcp-128-65.nay.redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200410135442.GA6772@dhcp-128-65.nay.redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_124421_697264_10558E4A 
X-CRM114-Status: UNSURE (   6.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [18.9.28.11 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Takashi Iwai <tiwai@suse.de>, kexec@lists.infradead.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>,
 Gary Lin <glin@suse.com>, Sergey Shatunov <me@prok.pw>,
 Colin Ian King <colin.king@canonical.com>,
 Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
 Jiri Slaby <jslaby@suse.cz>, Ard Biesheuvel <ardb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:54:42PM +0800, Dave Young wrote:
> 
> The runtime cleanup looks a very good one, but I also missed that,
> userspace kexec-tools will break with the efi setup_data changes. But
> kexec_file_load will just work with the cleanup applied.

Hmmm, I wonder if there could be some kselftest or kunit tests that
would make it easier to pick up these sorts of regressions earlier?

      	      	     	     	      	    - Ted

_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
