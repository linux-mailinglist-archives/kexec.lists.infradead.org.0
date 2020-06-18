Return-Path: <kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org>
X-Original-To: lists+kexec@lfdr.de
Delivered-To: lists+kexec@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545841FEF0E
	for <lists+kexec@lfdr.de>; Thu, 18 Jun 2020 11:54:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rW4vZ89egxmhuz41WF9+lQPkCdIM3+qCHvgg2SDKkF8=; b=dGD+w6eMWccujy
	mnBh1hrju8hNsTi4v3S2F6CgNTPNw1T1MhXTzvutpakQ1KjURotKOEHnwN0NMb4CSb9OnPaFI6lF4
	ZoXmpOCiwI43W576dqERUGEnx83wmtuE88ju2NveVn2aaZ5iURVr4JsLfYJ4mDHPpnFwmCUeodvNx
	ozgObNXeb+i7/Vdxb2iqnN/UXuN8YhN8yeF2FYY/m85ZaYC8L6D4t4HzMddtw09YSLUX+uYNAulQf
	NuLRHXDXkX/B9NpBvqC4bdXpY2sfRRrCltAbnQdv2xRcPdq7igBLSf4yx27J2hzjitL51Y1oSjlNK
	qXiOFVBZNnhwi0gPxcrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrFS-0006PL-2V; Thu, 18 Jun 2020 09:54:18 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrFO-0006IS-Lv
 for kexec@lists.infradead.org; Thu, 18 Jun 2020 09:54:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1592474052;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=dvjwqobn7XsDsNjqc7ij0syH8W5K+3hzZdxQeKDfhwk=;
 b=NRr5Lsy4amU4zAbxTrP5XbWgg50/JH3KOEa1YwFkfUT5smZFFeDRL0NUr/3qbY4wN7Jk7u
 dG8gGVHZLVAh7X403DRpAJ/c9M1T7EY4dfLG7Q6QPTvpl0E1DPqD8WH881tAipKAxWOjJP
 XIiSmVKKUUhbfhbCxiHAEC6GTRIuNMw=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-192-vbJCoXckPti39YB9oKEeiA-1; Thu, 18 Jun 2020 05:54:10 -0400
X-MC-Unique: vbJCoXckPti39YB9oKEeiA-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3EC0F13F6;
 Thu, 18 Jun 2020 09:54:09 +0000 (UTC)
Received: from dhcp-128-65.nay.redhat.com (ovpn-13-216.pek2.redhat.com
 [10.72.13.216])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3E24A5D9D3;
 Thu, 18 Jun 2020 09:54:04 +0000 (UTC)
Date: Thu, 18 Jun 2020 17:54:01 +0800
From: "dyoung@redhat.com" <dyoung@redhat.com>
To: "Souza, Jose" <jose.souza@intel.com>
Subject: Re: [Intel-gfx] i915/kexec: warning at
 drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440
Message-ID: <20200618095401.GB8527@dhcp-128-65.nay.redhat.com>
References: <20200617065315.GA6501@dhcp-128-65.nay.redhat.com>
 <b9abdee84e2465da720d2c44e80ba286470f7f3d.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b9abdee84e2465da720d2c44e80ba286470f7f3d.camel@intel.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_025414_790063_F90CC9CC 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [205.139.110.120 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "bhe@redhat.com" <bhe@redhat.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "joonas.lahtinen@linux.intel.com" <joonas.lahtinen@linux.intel.com>,
 "kexec@lists.infradead.org" <kexec@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>,
 "ebiederm@xmission.com" <ebiederm@xmission.com>, "Vivi,
 Rodrigo" <rodrigo.vivi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "kexec" <kexec-bounces@lists.infradead.org>
Errors-To: kexec-bounces+lists+kexec=lfdr.de@lists.infradead.org

Hi Souza,
On 06/17/20 at 05:34pm, Souza, Jose wrote:
> Hi Dave
> 
> Will take care of this, looks like PSR2 was left enabled by UEFI/BIOS then i915 enables PSR1.Are you affected by any visual glitches or other issues?

Thanks you.  I do not see visual glitches and other issues other than
the warning.

> Could you attach a log with drm.debug=0x1e set?

It seems a lot of output with the debug option enabled, will send to you
separately with an attachment.

> 
> Thanks
> 
> On Wed, 2020-06-17 at 14:53 +0800, Dave Young wrote:
> > Hi,
> > 
> > This warning exists for long time, I did not find time to report, here
> > is the latest kernel logs, can you please to have a look?
> > 
> > hardware: Thinkpad T480s
> > lspci: 00:02.0 VGA compatible controller: Intel Corporation UHD Graphics 620 (rev 07)
> > --
[snip]
> > [    9.652406] fbcon: i915drmfb (fb0) is primary device
> > [    9.653653] ------------[ cut here ]------------
> > [    9.653654] i915 0000:00:02.0: drm_WARN_ON(intel_de_read(dev_priv, ((const i915_reg_t){ .reg = ((((&(dev_priv)->__info)->trans_offsets[(dev_priv->psr.transcoder)] - (&(dev_priv)->__info)->trans_offsets[TRANSCODER_A] + (0x60800) + ((&(dev_priv)->__info)->display_mmio_offset)) - dev_priv->hsw_psr_mmio_adjust)) })) & (1 << 31))
> > [    9.657092] WARNING: CPU: 1 PID: 103 at drivers/gpu/drm/i915/display/intel_psr.c:782 intel_psr_activate+0x3c6/0x440 [i915]
> > [    9.657093] Modules linked in: snd_hda_codec_realtek(+) snd_hda_codec_generic iwlmvm(+) mac80211 input_leds snd_hda_intel snd_intel_dspcfg snd_hda_codec snd_hwdep snd_hda_core kvm_intel libarc4 snd_seq kvm snd_seq_device iwlwifi serio_raw irqbypass snd_pcm thinkpad_acpi pcspkr cfg80211 ledtrig_audio snd_timer rfkill i915 e1000e snd i2c_i801 soundcore i2c_smbus video intel_gtt iosf_mbi drm_kms_helper syscopyarea sysfillrect sysimgblt fb_sys_fops fuse drm
> > [    9.657262] CPU: 1 PID: 103 Comm: kworker/u16:3 Not tainted 5.8.0-rc1+ #179
> > [    9.657262] Hardware name: LENOVO 20L8S3M801/20L8S3M801, BIOS N22ET54W (1.31 ) 04/22/2019
> > [    9.657262] Workqueue: events_unbound async_run_entry_fn
> > [    9.657263] RIP: 0010:intel_psr_activate+0x3c6/0x440 [i915]
> > [    9.657264] Code: 4c 8b 6f 50 4d 85 ed 75 03 4c 8b 2f e8 c3 e0 1f e1 48 c7 c1 a0 ca 2e a0 4c 89 ea 48 c7 c7 40 3b 30 a0 48 89 c6 e8 f2 21 e0 e0 <0f> 0b 80 bd 88 69 00 00 00 0f 84 b5 fc ff ff 48 8b 7d 18 4c 8b 6f
> > [    9.657264] RSP: 0018:ffff88842ad2b898 EFLAGS: 00010282
> > [    9.657265] RAX: 0000000000000000 RBX: 0000000000000001 RCX: 0000000000000000
> > [    9.657265] RDX: 000000000000013a RSI: ffffffff825346da RDI: ffffffff82534ada
> > [    9.657265] RBP: ffff888423228000 R08: 000000023f6713ae R09: 000000000000013a
> > [    9.657266] R10: 0000000000000067 R11: 000000000002fa10 R12: ffff88842c16b128
> > [    9.657266] R13: ffff88842bb09970 R14: 0000000000000001 R15: ffff88842cbcc000
> > [    9.657266] FS:  0000000000000000(0000) GS:ffff88842e440000(0000) knlGS:0000000000000000
> > [    9.657267] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> > [    9.657267] CR2: 000055b5c70404c8 CR3: 0000000421d96005 CR4: 00000000001606e0
> > [    9.657267] DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> > [    9.657267] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7: 0000000000000400
> > [    9.657267] Call Trace:
> > [    9.657268]  intel_psr_update+0x17c/0x1a0 [i915]
> > [    9.657268]  intel_ddi_update_pipe+0x6c/0xb0 [i915]
> > [    9.657268]  intel_update_crtc+0x28b/0x420 [i915]
> > [    9.657268]  skl_commit_modeset_enables+0x142/0x4e0 [i915]
> > [    9.657269]  intel_atomic_commit_tail+0x2c6/0x1290 [i915]
> > [    9.657269]  ? complete+0x2f/0x40
> > [    9.657269]  ? flush_workqueue_prep_pwqs+0x118/0x130
> > [    9.657269]  ? flush_workqueue+0x178/0x3c0
> > [    9.657270]  intel_atomic_commit+0x281/0x300 [i915]
> > [    9.657270]  drm_client_modeset_commit_atomic+0x1be/0x200 [drm]
> > [    9.657270]  drm_client_modeset_commit_locked+0x54/0x150 [drm]
> > [    9.657270]  drm_client_modeset_commit+0x24/0x40 [drm]
> > [    9.657271]  drm_fb_helper_restore_fbdev_mode_unlocked+0x49/0x90 [drm_kms_helper]
> > [    9.657271]  drm_fb_helper_set_par+0x30/0x40 [drm_kms_helper]
> > [    9.657271]  intel_fbdev_set_par+0x16/0x60 [i915]
> > [    9.657272]  ? con_is_visible+0x27/0x40
> > [    9.657272]  fbcon_init+0x2e7/0x680
> > [    9.657272]  visual_init+0xce/0x130
> > [    9.657272]  do_bind_con_driver.isra.0+0x1da/0x2e0
> > [    9.657273]  do_take_over_console+0x116/0x180
> > [    9.657273]  do_fbcon_takeover+0x5c/0xc0
> > [    9.657273]  register_framebuffer+0x1e4/0x300
> > [    9.657274]  __drm_fb_helper_initial_config_and_unlock+0x320/0x490 [drm_kms_helper]
> > [    9.657274]  intel_fbdev_initial_config+0x14/0x30 [i915]
> > [    9.657274]  async_run_entry_fn+0x37/0x150
> > [    9.657274]  process_one_work+0x1bf/0x3d0
> > [    9.657275]  worker_thread+0x4d/0x3d0
> > [    9.657275]  ? process_one_work+0x3d0/0x3d0
> > [    9.657275]  kthread+0x11b/0x140
> > [    9.657276]  ? kthread_create_worker_on_cpu+0x70/0x70
> > [    9.657276]  ret_from_fork+0x22/0x30
> > [    9.657276] ---[ end trace f701c3abca58b4af ]---
> > [    9.674849] Console: switching to colour frame buffer device 240x67
> > 
> > [snip]

Thanks
Dave


_______________________________________________
kexec mailing list
kexec@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/kexec
