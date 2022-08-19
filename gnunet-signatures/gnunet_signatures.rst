Registry for Signature purposes
-------------------------------




=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TEST
-------------------------------------------------------------------------------
Number              0
Subsystem           GNUnet
Comment             Test signature, not valid for anything other than writing a test. (Note that the signature verification code will accept this value).
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_PONG_OWN
-------------------------------------------------------------------------------
Number              1
Subsystem           GNUnet-TRANSPORT
Comment             Signature for confirming that this peer uses a particular address.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_DISCONNECT
-------------------------------------------------------------------------------
Number              2
Subsystem           GNUnet-TRANSPORT
Comment             Signature for confirming that this peer intends to disconnect.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_REVOCATION
-------------------------------------------------------------------------------
Number              3
Subsystem           GNUnet-Revocation
Comment             Signature for confirming a key revocation.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_NAMESPACE_ADVERTISEMENT
-------------------------------------------------------------------------------
Number              4
Subsystem           GNUnet-FS
Comment             Signature for a namespace/pseudonym advertisement (by the namespace owner).
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_PEER_PLACEMENT
-------------------------------------------------------------------------------
Number              5
Subsystem           GNUnet-FS
Comment             Signature by which a peer affirms that it is providing a certain bit of content for use in LOCation URIs.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_DHT_HOP
-------------------------------------------------------------------------------
Number              6
Subsystem           GNUnet-DHT
Comment             Signature by which a peer affirms that it forwarded a message in the DHT.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_HELLO
-------------------------------------------------------------------------------
Number              7
Subsystem           GNUnet-HELLO
Comment             Signature by which a peer affirms its address.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_DNS_RECORD
-------------------------------------------------------------------------------
Number              11
Subsystem           GNUnet-DNS+Exit
Comment             Signature on a GNUNET_DNS_Advertisement.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_CHAT_MESSAGE
-------------------------------------------------------------------------------
Number              12
Subsystem           GNUnet-MESSENGER
Comment             Signature of a chat message.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_CHAT_RECEIPT
-------------------------------------------------------------------------------
Number              13
Subsystem           GNUnet-MESSENGER
Comment             Signature of confirmation receipt for a chat message.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_NSE_SEND
-------------------------------------------------------------------------------
Number              14
Subsystem           GNUnet-NSE
Comment             Signature of a network size estimate message.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_GNS_RECORD_SIGN
-------------------------------------------------------------------------------
Number              15
Subsystem           GNUnet-GNSRECORD
Comment             Signature of a gnunet naming system record block
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_SET_ECC_KEY
-------------------------------------------------------------------------------
Number              16
Subsystem           GNUnet-CORE
Comment             Purpose is to set a session key.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_FS_UBLOCK
-------------------------------------------------------------------------------
Number              17
Subsystem           GNUnet-FS
Comment             UBlock Signature, done using DSS, not ECC
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_REGEX_ACCEPT
-------------------------------------------------------------------------------
Number              18
Subsystem           GNUnet-REGEX
Comment             Accept state in regex DFA.  Peer affirms that it offers the matching service.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_CONVERSATION_RING
-------------------------------------------------------------------------------
Number              20
Subsystem           GNUnet-CONVERSATION
Comment             Signature of a conversation ring.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_SECRETSHARING_DKG1
-------------------------------------------------------------------------------
Number              21
Subsystem           GNUnet-SECRETSHARING
Comment             Signature for the first round of distributed key generation.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_SECRETSHARING_DKG2
-------------------------------------------------------------------------------
Number              22
Subsystem           GNUnet-SECRETSHARING
Comment             Signature for the second round of distributed key generation.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_SECRETSHARING_DECRYPTION
-------------------------------------------------------------------------------
Number              23
Subsystem           GNUnet-SECRETSHARING
Comment             Signature for the cooperative decryption.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_RECLAIM_CODE_SIGN
-------------------------------------------------------------------------------
Number              27
Subsystem           Reclaim
Comment             Signature for a GNUid Ticket
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_DELEGATE
-------------------------------------------------------------------------------
Number              28
Subsystem           Reclaim
Comment             Signature for a GNUnet credential
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_ADDRESS
-------------------------------------------------------------------------------
Number              29
Subsystem           GNUnet-TRANSPORT
Comment             Signature by a peer affirming that this is one of its addresses for the given time period.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_EPHEMERAL
-------------------------------------------------------------------------------
Number              30
Subsystem           GNUnet-TRANSPORT
Comment             Signature by a peer affirming that the given ephemeral key is currently in use by that peer's transport service.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_COMMUNICATOR_TCP_HANDSHAKE
-------------------------------------------------------------------------------
Number              31
Subsystem           GNUnet-TRANSPORT-TCP
Comment             Signature used by TCP communicator handshake.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_COMMUNICATOR_TCP_REKEY
-------------------------------------------------------------------------------
Number              32
Subsystem           GNUnet-TRANSPORT-TCP
Comment             Signature used by TCP communicator rekey.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_COMMUNICATOR_UDP_HANDSHAKE
-------------------------------------------------------------------------------
Number              33
Subsystem           GNUnet-TRANSPORT-UDP
Comment             Signature used by UDP communicator handshake.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_COMMUNICATOR_UDP_BROADCAST
-------------------------------------------------------------------------------
Number              34
Subsystem           GNUnet-TRANSPORT-UDP
Comment             Signature used by UDP broadcasts.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_CHALLENGE
-------------------------------------------------------------------------------
Number              35
Subsystem           GNUnet-TRANSPORT
Comment             Signature by a peer affirming that it received a challenge (and stating how long it expects the address on which the challenge was received to remain valid).
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_DV_HOP
-------------------------------------------------------------------------------
Number              36
Subsystem           GNUnet-TRANSPORT
Comment             Signature by a peer affirming that it is on a DV path.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_TRANSPORT_DV_INITIATOR
-------------------------------------------------------------------------------
Number              37
Subsystem           GNUnet-TRANSPORT
Comment             Signature by a peer affirming that it originated the DV path.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_CADET_CONNECTION_INITIATOR
-------------------------------------------------------------------------------
Number              38
Subsystem           GNUnet-CADET
Comment             Signature by a peer that like to create a connection.
=================== ===========================================================



=================== ===========================================================
               GNUNET_SIGNATURE_PURPOSE_COMMUNICATOR_TCP_HANDSHAKE_ACK
-------------------------------------------------------------------------------
Number              39
Subsystem           GNUnet-TRANSPORT-TCP
Comment             Signature by a peer sending back the nonce received at initial handshake.
=================== ===========================================================

